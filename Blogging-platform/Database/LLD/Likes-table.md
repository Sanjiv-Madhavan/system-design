### Queries and optimisation for likes table

```sql
CREATE TABLE likes (
    user_id UUID NOT NULL,
    blog_id UUID NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),

    PRIMARY KEY (user_id, blog_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (blog_id) REFERENCES blogs(id) ON DELETE CASCADE
);
```


### **Indexes & Optimization**


```sql
sql
CopyEdit
CREATE INDEX idx_likes_blog_id ON likes(blog_id);
CREATE INDEX idx_likes_user_id ON likes(user_id);
```


### Sample queries

The `likes` table represents the relationship between users and the blogs they like. Below is a comprehensive list of **possible queries** on the `likes` table, categorized by **use cases**.


---


## **1. Insert & Delete Queries**


### **1.1. Insert a Like (User Likes a Blog)**


```sql
INSERT INTO likes (user_id, blog_id)
VALUES ('user-uuid', 'blog-uuid')
ON CONFLICT (user_id, blog_id) DO NOTHING;
```


📌 **Purpose**: Adds a like for a blog by a user, avoiding duplicate likes.


### **1.2. Remove a Like (User Unlikes a Blog)**


```sql
DELETE FROM likes
WHERE user_id = 'user-uuid'
AND blog_id = 'blog-uuid';
```


📌 **Purpose**: Removes a like when a user unlikes a blog.


---


## **2. Fetching Likes Data**


### **2.1. Count Total Likes for a Blog**


```sql
SELECT COUNT(*) AS like_count
FROM likes
WHERE blog_id = 'blog-uuid';
```


📌 **Purpose**: Returns the total number of likes on a specific blog.


### **2.2. List All Users Who Liked a Specific Blog**


```sql
SELECT u.id, u.username, u.profile_picture_url
FROM likes l
JOIN users u ON l.user_id = u.id
WHERE l.blog_id = 'blog-uuid';
```


📌 **Purpose**: Displays all users who liked a given blog.


### **2.3. Fetch All Blogs Liked by a User**


```sql
SELECT b.id, b.title, b.slug, b.created_at
FROM likes l
JOIN blogs b ON l.blog_id = b.id
WHERE l.user_id = 'user-uuid'
ORDER BY l.created_at DESC;
```


📌 **Purpose**: Lists all blogs a user has liked.


### **2.4. Check If a User Liked a Blog**


```sql
SELECT COUNT(*)
FROM likes
WHERE user_id = 'user-uuid'
AND blog_id = 'blog-uuid';
```


📌 **Purpose**: Returns `1` if the user has liked the blog, `0` otherwise.


---


## **3. Aggregated Queries**


### **3.1. Find Top 10 Most Liked Blogs**


```sql
SELECT b.id, b.title, COUNT(l.blog_id) AS like_count
FROM blogs b
JOIN likes l ON b.id = l.blog_id
GROUP BY b.id
ORDER BY like_count DESC
LIMIT 10;
```


📌 **Purpose**: Identifies the most popular blogs based on likes.


### **3.2. Find Most Liked Blogs in the Last 30 Days**


```sql
SELECT b.id, b.title, COUNT(l.blog_id) AS like_count
FROM blogs b
JOIN likes l ON b.id = l.blog_id
WHERE l.created_at >= NOW() - INTERVAL '30 days'
GROUP BY b.id
ORDER BY like_count DESC
LIMIT 10;
```


📌 **Purpose**: Returns trending blogs based on recent likes.


### **3.3. Find Users Who Like the Same Blogs as a Given User**


```sql
SELECT DISTINCT u.id, u.username
FROM likes l1
JOIN likes l2 ON l1.blog_id = l2.blog_id
JOIN users u ON l2.user_id = u.id
WHERE l1.user_id = 'user-uuid'
AND l2.user_id <> 'user-uuid';
```


📌 **Purpose**: Finds users with similar blog interests.


---


## **4. Performance Optimization Queries**


### **4.1. Delete Old Like Data (If Required for Optimization)**


```sql
DELETE FROM likes
WHERE created_at < NOW() - INTERVAL '1 year';
```


📌 **Purpose**: Removes old likes data for performance optimization.


---


## **5. Reporting & Analytics Queries**


### **5.1. Count Total Likes Per User**


```sql
SELECT user_id, COUNT(*) AS total_likes
FROM likes
GROUP BY user_id
ORDER BY total_likes DESC;
```


📌 **Purpose**: Finds the most active users based on total likes.


### **5.2. Find Blogs That No One Has Liked**


```sql
SELECT b.id, b.title
FROM blogs b
LEFT JOIN likes l ON b.id = l.blog_id
WHERE l.blog_id IS NULL;
```


📌 **Purpose**: Identifies blogs with no likes.


---


## **6. Trending and Engagement Queries**


### **6.1. Find the Most Liked Blog Per Day**


```sql
SELECT blog_id, COUNT(*) AS like_count, DATE(created_at) AS like_date
FROM likes
GROUP BY blog_id, like_date
ORDER BY like_date DESC, like_count DESC
LIMIT 1;
```


📌 **Purpose**: Finds the most liked blog for each day.


### **6.2. Get Like Activity Trend for the Last 7 Days**


```sql
SELECT DATE(created_at) AS like_date, COUNT(*) AS total_likes
FROM likes
WHERE created_at >= NOW() - INTERVAL '7 days'
GROUP BY like_date
ORDER BY like_date;
```


📌 **Purpose**: Shows daily like trends for the past week.


---


### **Conclusion**


This list covers:
✅ **CRUD operations (Insert, Delete, Fetch)**


✅ **Aggregations (Most liked blogs, User engagement)**


✅ **Search-based Queries (Finding common interests, Unliked blogs)**


✅ **Performance & Cleanup Queries**






### Further optimisation ideas
- Partition likes table with primary key (created_at)
- PK created_at also allows like history tracking (reliking)
- Read replica queries redirection

