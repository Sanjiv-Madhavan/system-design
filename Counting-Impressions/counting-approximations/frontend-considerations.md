### **How the Frontend Handles Impressions in Instagram-like Feeds and Online Ads**
In systems like **Instagram, Facebook, Twitter, or online advertising networks**, an impression **is not counted when the feed loads** but rather when a post/ad is **actually visible in the viewport** for a minimum amount of time.

---

## **1. Frontend Handling of Impressions**
The frontend is responsible for:
1. **Detecting when a post/ad is visible** in the user’s viewport.
2. **Ensuring visibility duration meets the threshold** before counting an impression.
3. **Sending an impression event to the backend** when the criteria are met.
4. **Debouncing/reducing duplicate events** if a user scrolls back and forth.

---

## **2. Detecting Visibility in the Viewport**
The frontend uses the **Intersection Observer API** to detect when an element (post/ad) enters the viewport.

### **Example: Using Intersection Observer in JavaScript**
```javascript
const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            const postId = entry.target.dataset.postId;

            // Mark the time when the post became visible
            entry.target.dataset.viewStartTime = Date.now();

            // Set a timeout to send the impression if the post is viewed long enough
            setTimeout(() => {
                const startTime = entry.target.dataset.viewStartTime;
                if (startTime && Date.now() - startTime >= 2000) { // 2 seconds threshold
                    sendImpression(postId);
                }
            }, 2000); // 2 seconds visibility requirement
        }
    });
}, { threshold: 0.5 }); // Fires when at least 50% of the post is visible

document.querySelectorAll('.post').forEach(post => observer.observe(post));
```

---

## **3. Preventing Duplicate Impressions**
A user may scroll back and forth over a post/ad multiple times. To prevent duplicate impressions:
1. **Store viewed post IDs in session storage/local state.**
2. **Avoid re-sending the same impression unless a significant time has passed.**

```javascript
const viewedPosts = new Set();

function sendImpression(postId) {
    if (!viewedPosts.has(postId)) {
        fetch('/impression', {
            method: 'POST',
            body: JSON.stringify({ postId, userId: getUserId() }),
            headers: { 'Content-Type': 'application/json' }
        });
        viewedPosts.add(postId);
    }
}
```

---

## **4. Backend API to Handle Impressions**
When the frontend detects a **valid impression**, it sends an event to the backend:

### **API Request Example**
```sh
curl -X POST "http://backend-service/impression" -H "Content-Type: application/json" -d '{
    "post_id": "post_123",
    "user_id": "user_456",
    "timestamp": 1710612345678
}'
```

### **Backend Processing Flow (Golang)**
1. **Receive the event from the frontend.**
2. **Store it in Redis HyperLogLog** (for unique counting).
3. **Ensure deduplication using TTLs or time-based keys**.

```go
func recordImpression(c *gin.Context) {
    var data struct {
        PostID    string `json:"post_id"`
        UserID    string `json:"user_id"`
        Timestamp int64  `json:"timestamp"`
    }

    if err := c.ShouldBindJSON(&data); err != nil {
        c.JSON(http.StatusBadRequest, gin.H{"error": "Invalid JSON"})
        return
    }

    redisKey := fmt.Sprintf("impressions_hll:%s:%s", data.PostID, time.Now().Format("2006-01-02"))

    err := redisClient.PFAdd(ctx, redisKey, data.UserID).Err()
    if err != nil {
        c.JSON(http.StatusInternalServerError, gin.H{"error": "Could not record impression"})
        return
    }

    c.JSON(http.StatusOK, gin.H{"message": "Impression recorded"})
}
```

---

## **5. Handling Ads and Monetization**
For **online ads**, impressions are counted only when:
- At least **50% of the ad is visible for 1 second** (per IAB standard for display ads).
- **Video ads must be in view for at least 2 seconds**.

To **handle ad impressions separately**, we adjust the Intersection Observer:
```javascript
const adObserver = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            const adId = entry.target.dataset.adId;

            setTimeout(() => {
                if (entry.isIntersecting) {
                    sendAdImpression(adId);
                }
            }, 1000); // IAB standard: 1-second threshold
        }
    });
}, { threshold: 0.5 }); // Fires when 50% of the ad is visible

document.querySelectorAll('.ad').forEach(ad => adObserver.observe(ad));
```

---

## **6. Deployment with Kubernetes**
Both **frontend and backend** services can be deployed in Kubernetes.

### **Frontend Deployment (`frontend-deployment.yaml`)**
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: frontend
spec:
  replicas: 3
  selector:
    matchLabels:
      app: frontend
  template:
    metadata:
      labels:
        app: frontend
    spec:
      containers:
      - name: frontend
        image: your-dockerhub-username/frontend:latest
        ports:
        - containerPort: 80
---
apiVersion: v1
kind: Service
metadata:
  name: frontend-service
spec:
  ports:
  - port: 80
    targetPort: 80
  selector:
    app: frontend
  type: LoadBalancer
```

### **Backend Deployment (`backend-deployment.yaml`)**
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: backend
spec:
  replicas: 3
  selector:
    matchLabels:
      app: backend
  template:
    metadata:
      labels:
        app: backend
    spec:
      containers:
      - name: backend
        image: your-dockerhub-username/hll-service:latest
        ports:
        - containerPort: 8080
---
apiVersion: v1
kind: Service
metadata:
  name: backend-service
spec:
  ports:
  - port: 80
    targetPort: 8080
  selector:
    app: backend
  type: LoadBalancer
```

---

## **7. Final Flow Summary**
### **When a user scrolls Instagram-like feed or an ad page:**
1. **Frontend detects viewport visibility** using **Intersection Observer**.
2. **After a defined threshold (e.g., 2s for posts, 1s for ads), an impression is sent to the backend**.
3. **Backend stores impressions in Redis HyperLogLog**, tracking **unique views per post/ad per day**.
4. **Data is queried in real-time using a fast API**.
5. **Data retention is handled with automatic expiry in Redis** (older than 24 hours).

---

## **8. Key Benefits**
✅ **Efficient Tracking**: Uses **Intersection Observer** for viewport detection.  
✅ **Low Latency Queries**: Uses **HyperLogLog** for memory-efficient unique counting.  
✅ **Scalable**: Frontend, backend, and Redis are deployed on **Kubernetes** for autoscaling.  
✅ **Optimized for Monetization**: Follows **IAB standards** for ad impressions.  
