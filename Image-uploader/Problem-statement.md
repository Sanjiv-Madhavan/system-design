- [Design an Image Service](https://www.notion.so/hasdkfhksfdajkjafgsdhjk/1ac10e8d124280a38aa7e2b053ce4acc#design-an-image-service)
- [Problem Statement](https://www.notion.so/hasdkfhksfdajkjafgsdhjk/1ac10e8d124280a38aa7e2b053ce4acc#problem-statement)
- [Requirements](https://www.notion.so/hasdkfhksfdajkjafgsdhjk/1ac10e8d124280a38aa7e2b053ce4acc#requirements)
	- [Core Requirements](https://www.notion.so/hasdkfhksfdajkjafgsdhjk/1ac10e8d124280a38aa7e2b053ce4acc#core-requirements)
	- [High Level Requirements](https://www.notion.so/hasdkfhksfdajkjafgsdhjk/1ac10e8d124280a38aa7e2b053ce4acc#high-level-requirements)
	- [Micro Requirements](https://www.notion.so/hasdkfhksfdajkjafgsdhjk/1ac10e8d124280a38aa7e2b053ce4acc#micro-requirements)
- [Output](https://www.notion.so/hasdkfhksfdajkjafgsdhjk/1ac10e8d124280a38aa7e2b053ce4acc#output)
	- [Design Document](https://www.notion.so/hasdkfhksfdajkjafgsdhjk/1ac10e8d124280a38aa7e2b053ce4acc#design-document)
	- [Prototype](https://www.notion.so/hasdkfhksfdajkjafgsdhjk/1ac10e8d124280a38aa7e2b053ce4acc#prototype)
		- [Recommended Tech Stack](https://www.notion.so/hasdkfhksfdajkjafgsdhjk/1ac10e8d124280a38aa7e2b053ce4acc#recommended-tech-stack)
		- [Keep in mind](https://www.notion.so/hasdkfhksfdajkjafgsdhjk/1ac10e8d124280a38aa7e2b053ce4acc#keep-in-mind)
- [Outcome](https://www.notion.so/hasdkfhksfdajkjafgsdhjk/1ac10e8d124280a38aa7e2b053ce4acc#outcome)
	- [You'll learn](https://www.notion.so/hasdkfhksfdajkjafgsdhjk/1ac10e8d124280a38aa7e2b053ce4acc#youll-learn)
- [Share and shoutout](https://www.notion.so/hasdkfhksfdajkjafgsdhjk/1ac10e8d124280a38aa7e2b053ce4acc#share-and-shoutout)

# Problem Statement


Design an image service that takes care of uploading, sering and optimizing images at scale of 5 million image upload every hour. The image optimization will be specific to the device requesting it.


![139569887-2247a841-f78d-4546-a331-ec4d891f453a.png](https://user-images.githubusercontent.com/4745789/139569887-2247a841-f78d-4546-a331-ec4d891f453a.png)


# Requirements



_The problem statement is something to start with, be creative and dive into the product details and add constraints and features you think would be important._



## Core Requirements

- upload **5 million images** every hour from various clients and devices
- serving images **efficiently** to the rendering devices
- provide **analytics** around how images are requested from the systems
- bacndwith consumption should be **near-optimal**

## High Level Requirements

- make your high-level components operate with **high availability**
- ensure that the data in your system is **durable**, not matter what happens
- define how your system would behave while **scaling-up** and **scaling-down**
- make your system **cost-effective** and provide a justification for the same
- describe how **capacity planning** helped you made a good design decision
- think about how other services will interact with your service

## Micro Requirements

- ensure the data in your system is **never** going in an inconsistent state
- ensure your system is **free of deadlocks** (if applicable)
- ensure that the throughput of your system is not affected by **locking**, if it does, state how it would affect

# Output


## Design Document



Create a **design document** of this system/feature stating all critical design decisions, tradeoffs, components, services, and communications. Also specify how your system handles at scale, and what will eventually become a chokepoint.


Do **not** create unnecessary components, just to make design look complicated. A good design is **always simple and elegant**. A good way to think about it is if you were to create a spearate process/machine/infra for each component and you will have to code it yourself, would you still do it?



## Prototype


To understand the nuances and internals of this system, build a prototype that

- write an image uploader that uploads image and stores it locally on one of your local folders
- generate a public URL for the image through which the image can be pullged in an `img` tag
- record metrics everytime an image is requested

### Recommended Tech Stack


This is a recommended tech-stack for building this prototype


| Which    | Options           |
| -------- | ----------------- |
| Language | Golang, Java, C++ |


### Keep in mind


These are the common pitfalls that you should keep in mind while you are building this prototype

- serving image from your custom API server is very simple

# Outcome


## You'll learn

- serving static files
- image uploading at scale
- using CDN to cache a handle load from different geographies

This assignment is part of [Arpit's System Design Masterclass](https://arpitbhayani.me/masterclass)



---


# **High-Level Approach**


### **Key Focus Areas:**

1. **Efficient Image Uploads** (5M images per hour)
2. **Optimized Image Serving** (Responsive & Geo-distributed)
3. **Scalability & High Availability** (Auto-scaling, CDN usage)
4. **Cost-effectiveness & Resource Efficiency** (Storage & Bandwidth optimization)
5. **Observability & Analytics** (Usage tracking, logging)

---


## **1. Architecture Overview**


We'll break the service into key components:

1. **Image Ingestion Layer**: Handles user uploads, validates files, and processes them.
2. **Storage & Processing Layer**: Manages efficient image storage, optimizations, and transformations.
3. **Delivery Layer**: Uses a **CDN** for faster content delivery.
4. **Analytics Layer**: Logs and tracks image requests.

### **Tech Stack:**

- **Backend:** Go (fast performance, efficient concurrency)
- **Storage:** S3-compatible object storage (Amazon S3, MinIO)
- **Database:** PostgreSQL (metadata storage), Redis (caching)
- **Processing:** ImageMagick / OpenCV / Thumbor for transformations
- **Queue System:** Kafka / RabbitMQ (asynchronous processing)
- **CDN:** Cloudflare / AWS CloudFront

---


## **2. Upload Pipeline Design**


### **Flow**

1. **User Uploads Image** → Request hits API Gateway → Passed to Upload Service.
2. **Upload Service:**
	- Validates image type, size, and metadata.
	- Generates a unique identifier for storage.
	- Stores metadata in PostgreSQL.
	- Sends image to Object Storage (S3, MinIO).
	- Pushes a processing task into Kafka / RabbitMQ.
3. **Processing Service:**
	- Consumes messages from Kafka.
	- Resizes and optimizes images for multiple resolutions.
	- Stores optimized images back into storage.
4. **Response:** Returns an image URL that can be embedded in clients.

---


## **3. Image Storage Strategy**


### **Storage Optimizations**

- **Metadata in DB:** Store image metadata (size, format, user ID) in PostgreSQL.
- **Cold Storage for Old Images:** Move unused images to cost-efficient storage (Amazon Glacier).
- **Storage Sharding:** Partition images based on hashing (e.g., by user ID).

### **File Naming Convention**


```plain text
/images/{user_id}/{image_id}/{resolution}.jpg
```


### **Image Compression & Format Considerations**

- Convert to **WebP** for web apps (efficient compression).
- Use **JPEG** for traditional compatibility.
- **PNG for transparent images**.

---


## **4. Serving Images Efficiently**


### **Flow**

1. User requests an image.
2. Request is routed through a **CDN**.
3. If not cached, CDN fetches from the **Image Server**.
4. Image Server serves optimized image based on **device type & resolution**.

### **Optimization Strategies**

- **Cache Layers:**
	- CDN caches frequently accessed images.
	- Redis caches metadata and hot images.
- **Lazy Processing:** Generate only requested resolutions instead of pre-generating all.

### **Handling Bandwidth Consumption**

- Implement **WebP format** for browsers that support it.
- Use **Progressive Loading** for large images.

---


## **5. Scalability Considerations**


### **Handling 5M uploads per hour**

- **API Rate Limiting:** Prevent abuse with a token-based quota system.
- **Load Balancing:** Use **Nginx / Envoy** for request distribution.
- **Auto-scaling:** Scale storage & processing workers dynamically.

### **Scaling Reads**

- **CDN-first approach:** Minimize origin hits.
- **Image deduplication:** Store only unique images.

### **Scaling Writes**

- **Shard Storage:** Hashing-based partitioning.
- **Batch Processing:** Reduce write contention.

---


## **6. Analytics & Monitoring**


### **Key Metrics to Track**

- Upload success rate & failures.
- Image request trends.
- Storage & bandwidth consumption.

### **Tools**

- **Prometheus + Grafana:** Metrics visualization.
- **ElasticSearch + Kibana:** Log aggregation.
- **AWS CloudWatch / OpenTelemetry:** Distributed tracing.

---


## **7. Cost Optimization**


### **Reduce Storage Costs**

- Use **WebP over JPEG** (30% smaller).
- Implement **automatic expiration policies** for unused images.
- Store old images in **cold storage**.

### **Reduce Bandwidth Costs**

- Leverage **CDN caching**.
- Dynamically adjust **image quality based on network conditions**.

---


# **Final Thoughts**


This approach ensures:
✅ **Scalability** - Supports millions of images.
✅ **Efficiency** - Optimized bandwidth usage.
✅ **Cost-effectiveness** - Minimized storage & delivery costs.
✅ **High Performance** - Cached & geo-distributed delivery.

