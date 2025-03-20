### **How to Use CDNs for Efficient Impression Counting**
CDNs (Content Delivery Networks) play a crucial role in reducing backend load, optimizing performance, and making impression data readily available. Since impression tracking requires real-time counting, a **hybrid approach** combining **CDN edge caching, real-time data aggregation, and backend storage (Redis + HLL)** ensures high availability and low latency.

---

## **1. Why Use a CDN for Impression Counting?**
1. **Reduce Backend Load**: Instead of every request hitting the backend, a **CDN edge server** can handle caching and aggregation.
2. **Lower Latency**: CDNs distribute content close to users, making impression tracking **near-instant**.
3. **Real-Time Data Availability**: CDN edge servers can pre-aggregate impression counts and push them to the backend.
4. **High Scalability**: CDNs handle spikes in traffic (e.g., **Instagram explore page** or viral ads).

---

## **2. How CDNs Work with Impression Counting**
### **Flow Overview**
1. **A user loads an Instagram-like feed (or an ad page).**
2. **Frontend detects a valid impression** (using Intersection Observer).
3. Instead of **directly sending** the request to the backend, it first **hits the CDN**.
4. **CDN logs and aggregates impressions in real time**.
5. Periodically, the CDN **pushes batched impression data** to the backend (Redis HyperLogLog).
6. The backend processes **aggregated CDN logs**, storing results in **Redis** for real-time analytics.
7. Queries for impression counts **first check the CDN cache**, then fall back to Redis if needed.

---

## **3. CDN-Based Design for Impression Tracking**
### **Step 1: Configure CDN (Cloudflare, Akamai, Fastly, AWS CloudFront)**
Most modern CDNs allow **serverless functions at the edge**, which help in real-time tracking.

### **Step 2: Implement Edge Function (Example: Cloudflare Workers)**
Instead of sending impressions directly to the backend, we **log impressions at the edge**.

#### **Cloudflare Worker (CDN Edge Function)**
```javascript
addEventListener("fetch", event => {
    event.respondWith(handleRequest(event.request));
});

async function handleRequest(request) {
    const url = new URL(request.url);
    const adID = url.searchParams.get("ad_id");
    const userID = url.searchParams.get("user_id");

    if (!adID || !userID) {
        return new Response(JSON.stringify({ error: "Missing ad_id or user_id" }), { status: 400 });
    }

    const timestamp = Date.now();
    const key = `impression:${adID}:${new Date().toISOString().slice(0, 10)}`;

    // Increment a counter at the CDN layer
    let count = await IMPRESSION_KV.get(key);
    count = count ? parseInt(count) + 1 : 1;
    await IMPRESSION_KV.put(key, count);

    return new Response(JSON.stringify({ message: "Impression logged at CDN", count: count }), { status: 200 });
}
```
🔹 **IMPRESSION_KV** is a **Key-Value store** (Cloudflare KV, Akamai EdgeKV, AWS DynamoDB) that stores counts at the **CDN edge**.

---

### **Step 3: Sync CDN Data to the Backend Periodically**
A **cron job in Kubernetes** or a serverless function (e.g., AWS Lambda, Google Cloud Functions) can periodically fetch CDN logs and push them to **Redis HLL**.

#### **Backend Cron Job (Sync from CDN to Redis)**
```go
package main

import (
	"context"
	"fmt"
	"log"
	"net/http"
	"encoding/json"
	"time"
	"github.com/go-redis/redis/v8"
)

var (
	redisClient *redis.Client
	ctx         = context.Background()
)

// Fetch CDN stats and update Redis HLL
func syncCDNData() {
	resp, err := http.Get("https://api.cloudflare.com/client/v4/accounts/{account_id}/logs/impressions")
	if err != nil {
		log.Println("Error fetching CDN logs:", err)
		return
	}
	defer resp.Body.Close()

	var data map[string]int
	json.NewDecoder(resp.Body).Decode(&data)

	// Store in Redis HLL
	for adID, count := range data {
		key := fmt.Sprintf("impressions_hll:%s:%s", adID, time.Now().Format("2006-01-02"))
		redisClient.PFAdd(ctx, key, count)
		log.Printf("Updated Redis HLL for %s with %d impressions\n", adID, count)
	}
}

func main() {
	redisClient = redis.NewClient(&redis.Options{
		Addr: "redis-service:6379",
	})

	for {
		syncCDNData()
		time.Sleep(5 * time.Minute) // Sync every 5 min
	}
}
```

🔹 **CDN Log Syncing**
- Runs every **5 minutes**.
- Fetches **aggregated impressions** from the CDN.
- Updates **Redis HyperLogLog**.

---

### **Step 4: Querying Impression Counts**
#### **API to Get Impression Counts**
When an advertiser requests impression stats, the API:
1. **First checks the CDN** (for real-time data).
2. If unavailable, it **fetches from Redis**.

#### **Golang API**
```go
func getUniqueVisitors(c *gin.Context) {
    adID := c.Param("ad_id")
    date := c.Query("date")

    if adID == "" || date == "" {
        c.JSON(http.StatusBadRequest, gin.H{"error": "ad_id and date are required"})
        return
    }

    // First, check CDN cache
    cdnURL := fmt.Sprintf("https://api.cloudflare.com/client/v4/accounts/{account_id}/logs/impressions?ad_id=%s&date=%s", adID, date)
    resp, err := http.Get(cdnURL)
    if err == nil {
        var data map[string]int
        json.NewDecoder(resp.Body).Decode(&data)
        if count, exists := data[adID]; exists {
            c.JSON(http.StatusOK, gin.H{"ad_id": adID, "date": date, "unique_visitors": count, "source": "CDN"})
            return
        }
    }

    // If not found in CDN, fallback to Redis
    redisKey := fmt.Sprintf("impressions_hll:%s:%s", adID, date)
    count, err := redisClient.PFCount(ctx, redisKey).Result()
    if err != nil {
        c.JSON(http.StatusInternalServerError, gin.H{"error": "Could not fetch impression count"})
        return
    }

    c.JSON(http.StatusOK, gin.H{"ad_id": adID, "date": date, "unique_visitors": count, "source": "Redis"})
}
```

---

## **5. Advantages of Using CDN for Impressions**
| Feature | Benefit |
|---------|---------|
| **Reduced Backend Load** | Most impressions are handled **at the CDN layer**, reducing database and server costs. |
| **Low Latency** | Users get near-instant responses, as CDN **caches precomputed data**. |
| **Real-Time Aggregation** | CDN **pre-aggregates impression counts** before pushing them to Redis. |
| **Scalability** | Works at **planet-scale** across millions of users without bottlenecks. |
| **Cost-Effective** | Reduces expensive **database queries** for impression counts. |

---

## **6. Final Architecture**
1. **User loads Instagram-like feed → Posts appear in the viewport**.
2. **Frontend detects valid impression → Sends to CDN**.
3. **CDN logs impression → Aggregates in Edge KV**.
4. **Backend syncs CDN logs every 5 min → Stores in Redis HLL**.
5. **Advertiser queries impression count → First checks CDN, then Redis**.

---

## **7. Deployment in Kubernetes**
- **Frontend Service** (Tracks impressions, sends to CDN)
- **CDN Edge Workers** (Fast real-time tracking)
- **Redis + HyperLogLog** (Efficient unique visitor counting)
- **Backend API** (Aggregates data & serves analytics)
- **Cron Job (Syncing)** (Pulls data from CDN to Redis)

---

## **Final Thoughts**
- **CDN first → Redis second → Database last**
- This approach **reduces API load**, **ensures real-time tracking**, and **optimizes for scale**.
- Works seamlessly for **social media, online ads, and video impressions**.