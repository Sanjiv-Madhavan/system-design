Landing page query performance

Why is Query 1 (Joining `likes` First) Faster When Likes Are Fewer Than Comments?

The **order of** **`LEFT JOIN`** **impacts performance** because **joining a smaller table first reduces the number of comparisons** and **memory required** for subsequent joins.


When **`likes`** **are fewer than** **`comments`**, joining `likes` first minimizes the intermediate result set before `comments` are joined. Here’s why:


---


## **1. Understanding Join Mechanics**


### **How** **`LEFT JOIN`** **Works in SQL**

- The **left table (****`blogs`****)** is scanned first.
- The **right table (****`likes`** **or** **`comments`****)** is then joined based on `blog_id`.
- **If there’s a match, the corresponding data is added; otherwise, NULLs are used**.
- The **larger the right table, the more computations required**.

### **When Likes Are Fewer Than Comments**


| **Table**  | **Approximate Row Count** |
| ---------- | ------------------------- |
| `blogs`    | **1,000,000 rows**        |
| `likes`    | **200,000 rows**          |
| `comments` | **2,000,000 rows**        |


If we **join** **`likes`** **first**:

- PostgreSQL processes `blogs` **against a smaller dataset first (****`likes`****)**.
- This produces a **smaller intermediate result set** (e.g., **1,000,000 rows with 200,000 likes matched**).
- Then, when we **join** **`comments`** **next**, the database **only scans the already reduced dataset**.

If we **join** **`comments`** **first**:

- We immediately create a **larger intermediate result set** (e.g., **1,000,000 rows with 2,000,000 comment matches**).
- Then, when we **join** **`likes`** **next**, PostgreSQL must process a **much larger dataset**, slowing down query execution.

---


## **2. Execution Plan Analysis**


Using `EXPLAIN ANALYZE`, let's compare the estimated number of rows processed in both cases.


### **Query 1: Joining** **`likes`** **First**


```sql
EXPLAIN ANALYZE
WITH like_counts AS (
    SELECT blog_id, COUNT(*) AS like_count FROM likes GROUP BY blog_id
),
comment_counts AS (
    SELECT blog_id, COUNT(*) AS comment_count FROM comments GROUP BY blog_id
)
SELECT
    b.id AS blog_id,
    b.title,
    u.username AS author_name,
    COALESCE(lc.like_count, 0) AS total_likes,
    COALESCE(cc.comment_count, 0) AS total_comments
FROM blogs b
JOIN users u ON b.author_id = u.id
LEFT JOIN like_counts lc ON b.id = lc.blog_id  -- JOIN SMALLER TABLE FIRST
LEFT JOIN comment_counts cc ON b.id = cc.blog_id
ORDER BY b.created_at DESC
LIMIT 10 OFFSET 0;
```


### **Expected Execution Plan Output**


```plain text
-> Hash Left Join  (cost=XXXXX rows=1,000,000)
   -> Hash Aggregate (cost=XXXXX rows=200,000)  -- Likes Aggregated First (Fewer Rows)
   -> Hash Left Join  (cost=XXXXX rows=1,000,000)
      -> Hash Aggregate (cost=XXXXX rows=2,000,000)  -- Comments Joined Second (Larger)
```


### **Why is This Faster?**


✅ **Fewer comparisons upfront**: The database **only matches 200,000 rows first** before handling the larger comment dataset.


✅ **Reduces memory overhead**: PostgreSQL stores **fewer intermediate rows**.


✅ **Efficient indexing use**: `likes` joins faster since it’s a **smaller, indexed dataset**.


---


### **Query 2: Joining** **`comments`** **First**


```sql
EXPLAIN ANALYZE
WITH like_counts AS (
    SELECT blog_id, COUNT(*) AS like_count FROM likes GROUP BY blog_id
),
comment_counts AS (
    SELECT blog_id, COUNT(*) AS comment_count FROM comments GROUP BY blog_id
)
SELECT
    b.id AS blog_id,
    b.title,
    u.username AS author_name,
    COALESCE(lc.like_count, 0) AS total_likes,
    COALESCE(cc.comment_count, 0) AS total_comments
FROM blogs b
JOIN users u ON b.author_id = u.id
LEFT JOIN comment_counts cc ON b.id = cc.blog_id  -- JOIN LARGER TABLE FIRST
LEFT JOIN like_counts lc ON b.id = lc.blog_id
ORDER BY b.created_at DESC
LIMIT 10 OFFSET 0;
```


### **Expected Execution Plan Output**


```plain text
-> Hash Left Join  (cost=XXXXX rows=1,000,000)
   -> Hash Aggregate (cost=XXXXX rows=2,000,000)  -- Comments Aggregated First (Larger Dataset)
   -> Hash Left Join  (cost=XXXXX rows=1,000,000)
      -> Hash Aggregate (cost=XXXXX rows=200,000)  -- Likes Joined Second (Smaller)
```


### **Why is This Slower?**


❌ **Joins a larger dataset first**: `comments` (2M rows) **inflates the intermediate result set** before `likes` are added.


❌ **Increased memory overhead**: PostgreSQL **holds more rows in memory** before applying the second join.


❌ **More expensive disk I/O**: The database **must sort and hash more data upfront**.


---


## **3. Real-World Example**


Imagine you have **1 million blogs**, but:

- Each blog **gets ~200 likes** (200,000 total).
- Each blog **gets ~2,000 comments** (2,000,000 total).

If you **join likes first**:

1. **Blog dataset (1M rows)** → **Match 200K likes** → **Intermediate result = 1M rows (likes mapped)**
2. **Join 2M comments next**, but only against **this filtered dataset**.

If you **join comments first**:

1. **Blog dataset (1M rows)** → **Match 2M comments** → **Intermediate result = 2M rows**
2. **Now join 200K likes**, which must scan **a much larger dataset**.

**Joining the smaller table first reduces the number of comparisons PostgreSQL has to perform.**


---


## **4. Best Practices for Choosing Join Order**


### **✅ General Rule**

- **If one table is significantly smaller than the other, join it first.**
- **Use** **`EXPLAIN ANALYZE`** **to verify performance.**

### **📌 When to Join** **`likes`** **First?**

- If **likes are significantly fewer than comments**.
- If **most blogs have likes but fewer comments**.
- If **likes are frequently updated, while comments are mostly static**.

### **📌 When to Join** **`comments`** **First?**

- If **comments are significantly fewer than likes** (uncommon).
- If **you have strict business logic requiring comment aggregation first**.

---


## **5. Final Verdict**

- **If** **`likes`** **are fewer than** **`comments`**, always **join** **`likes`** **first**.
- **If** **`comments`** **are fewer than** **`likes`**, join `comments` first **(but this is rare in social/blogging apps)**.
- **Always test with** **`EXPLAIN ANALYZE`** to check query performance with real data.

 **Correcting join order can lead to 2x–5x faster queries on large datasets!** 





Examples of Join Order Optimization Based on Table Size

Let’s go through **real-world scenarios** where the **order of joins impacts performance**, with clear **SQL queries and execution comparisons**.


---


## **Example 1: One-to-Many Join (Blogs → Likes)**


### **Scenario**


We have a **blogging platform** where:

- **`blogs`** **table** contains **1 million blogs**.
- **`likes`** **table** contains **200,000 likes** (some blogs have likes, some don’t).
- **`comments`** **table** contains **2 million comments**.

---


### **🔴 Bad Join Order: Joining** **`comments`** **First**


```sql
SELECT
    b.id AS blog_id,
    b.title,
    u.username AS author_name,
    COALESCE(l.like_count, 0) AS total_likes,
    COALESCE(c.comment_count, 0) AS total_comments
FROM blogs b
JOIN users u ON b.author_id = u.id
LEFT JOIN (  -- Joining the largest table first
    SELECT blog_id, COUNT(*) AS comment_count FROM comments GROUP BY blog_id
) c ON b.id = c.blog_id
LEFT JOIN (
    SELECT blog_id, COUNT(*) AS like_count FROM likes GROUP BY blog_id
) l ON b.id = l.blog_id
ORDER BY b.created_at DESC
LIMIT 10 OFFSET 0;
```


### **Why is This Bad?**

1. The **`comments`** **table has 2 million rows**.
2. **Joining it first inflates the intermediate result set** before adding likes.
3. **Execution Plan (EXPLAIN ANALYZE) might show high cost:**

	```plain text
	-> Hash Left Join  (cost=2000000)  -- Joining large table first increases workload
	-> Hash Aggregate (cost=2000000)  -- 2M comments processed first
	-> Hash Left Join  (cost=1000000)  -- 200K likes joined after
	```

4. The database is forced to **process all comments before handling likes**.

---


### **✅ Good Join Order: Joining** **`likes`** **First**


```sql
SELECT
    b.id AS blog_id,
    b.title,
    u.username AS author_name,
    COALESCE(l.like_count, 0) AS total_likes,
    COALESCE(c.comment_count, 0) AS total_comments
FROM blogs b
JOIN users u ON b.author_id = u.id
LEFT JOIN (  -- Joining the smaller table first
    SELECT blog_id, COUNT(*) AS like_count FROM likes GROUP BY blog_id
) l ON b.id = l.blog_id
LEFT JOIN (
    SELECT blog_id, COUNT(*) AS comment_count FROM comments GROUP BY blog_id
) c ON b.id = c.blog_id
ORDER BY b.created_at DESC
LIMIT 10 OFFSET 0;
```


### **Why is This Better?**

1. **`likes`** **table has only 200K rows** → much smaller than comments.
2. **First join produces a smaller result set** (instead of inflating it with comments).
3. **Fewer rows need to be processed before adding comments.**
4. **Execution Plan (EXPLAIN ANALYZE) shows a lower cost:**

	```plain text
	-> Hash Left Join  (cost=200000)  -- Likes processed first (smaller dataset)
	-> Hash Aggregate (cost=200000)  -- Aggregated before join
	-> Hash Left Join  (cost=2000000)  -- Comments joined after
	```

5. **Query runs 2–5x faster!**

---


## **Example 2: Many-to-Many Join (Users ↔ Followers)**


### **Scenario**

- **`users`** **table** has **500,000 users**.
- **`follows`** **table** (users following each other) has **10 million rows**.
- **Each user can follow multiple users (many-to-many).**
- We need to find **all users followed by a specific user (****`u1`****) and their latest blog posts**.

---


### **🔴 Bad Join Order: Starting with** **`follows`**


```sql
SELECT
    u.id AS user_id,
    u.username,
    b.title AS latest_blog
FROM follows f
JOIN users u ON f.following_id = u.id  -- Large many-to-many join first
LEFT JOIN (
    SELECT author_id, title
    FROM blogs
    ORDER BY created_at DESC
    LIMIT 1  -- Fetch latest blog for each author
) b ON u.id = b.author_id
WHERE f.follower_id = 'u1';
```


### **Why is This Bad?**

1. **Joining** **`follows`** **first (10M rows) creates a massive intermediate result set.**
2. The **`users`** **table join happens on 10M rows**, slowing down query execution.
3. Fetching **blogs for 10M users is inefficient**.

---


### **✅ Good Join Order: Starting with** **`users`** **First**


```sql
SELECT
    u.id AS user_id,
    u.username,
    b.title AS latest_blog
FROM users u
JOIN follows f ON u.id = f.following_id  -- Smaller dataset first
LEFT JOIN (
    SELECT author_id, title
    FROM blogs
    ORDER BY created_at DESC
    LIMIT 1  -- Fetch latest blog for each author
) b ON u.id = b.author_id
WHERE f.follower_id = 'u1';
```


### **Why is This Better?**

1. **First filters only the followed users** (much smaller result set).
2. **Processes fewer rows before applying blog joins**.
3. **Query runs faster with efficient indexing**.

---


## **Example 3: Filtering Before Joining**


### **Scenario**


We need to **find the most liked blogs in the last 7 days**.


---


### **🔴 Bad Approach: Joining Before Filtering**


```sql
SELECT
    b.id,
    b.title,
    COALESCE(l.like_count, 0) AS total_likes
FROM blogs b
LEFT JOIN (
    SELECT blog_id, COUNT(*) AS like_count
    FROM likes
    GROUP BY blog_id
) l ON b.id = l.blog_id
WHERE b.created_at > NOW() - INTERVAL '7 days'
ORDER BY total_likes DESC
LIMIT 10;
```


### **Why is This Bad?**

1. **Joins** **`likes`** **on all blogs before filtering**.
2. **Processes unnecessary old data** before applying the 7-day condition.
3. **Execution plan shows unnecessary computation**.

---


### **✅ Good Approach: Filtering First, Then Joining**


```sql
WITH recent_blogs AS (
    SELECT id, title FROM blogs
    WHERE created_at > NOW() - INTERVAL '7 days'
)
SELECT
    b.id,
    b.title,
    COALESCE(l.like_count, 0) AS total_likes
FROM recent_blogs b
LEFT JOIN (
    SELECT blog_id, COUNT(*) AS like_count
    FROM likes
    GROUP BY blog_id
) l ON b.id = l.blog_id
ORDER BY total_likes DESC
LIMIT 10;
```


### **Why is This Better?**

1. **Filters** **`blogs`** **first, reducing dataset before join.**
2. **Processes fewer rows, making the join faster.**
3. **Query executes with lower cost in** **`EXPLAIN ANALYZE`****.**

---


## **Final Takeaways**


### **How to Choose Join Order Efficiently?**


| **Scenario**                              | **Best Join Order**                 | **Why?**                     |
| ----------------------------------------- | ----------------------------------- | ---------------------------- |
| **One-to-Many (Blogs → Likes, Comments)** | Join **likes first, then comments** | Prevents large row expansion |
| **Many-to-Many (Users ↔ Followers)**      | Join **users first, then follows**  | Reduces initial dataset size |
| **Filtering Large Data Sets**             | **Filter first, then join**         | Avoids unnecessary row scans |
| **Aggregating Before Joining**            | **Pre-aggregate in subqueries**     | Prevents row duplication     |


---


**Correct join order can make queries up to 5x faster in real-world applications!**





Caveats of window functions (keep it simple)

### **Understanding This Query**


This query introduces **window functions (****`COUNT() OVER (PARTITION BY b.id)`****)** instead of **aggregating in a** **`GROUP BY`** **or subquery**.


---


## **Key Differences from Traditional Aggregation Approach**


| **Feature**                    | **This Query (Window Functions)**                                                                                                | **Traditional Aggregation (GROUP BY or Subquery)**                                       |
| ------------------------------ | -------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| **Aggregation Method**         | Uses **window functions (****`COUNT() OVER (PARTITION BY b.id)`****)** to compute likes and comments **without collapsing rows** | Uses `GROUP BY blog_id` in subqueries to pre-aggregate likes and comments before joining |
| **Impact on Row Expansion**    | **Rows are not collapsed** due to `OVER()`, meaning each blog can appear multiple times                                          | Each blog **appears only once** in final result                                          |
| **Performance Considerations** | **Can be slower** if joins create too many duplicate rows **before counting**                                                    | **Faster** as aggregation reduces row count **before join**                              |
| **Result Set Behavior**        | Every **like or comment increases row count before counting**                                                                    | Ensures a **single row per blog**                                                        |


---


## **How This Query Works**


```sql
SELECT
    b.id AS blog_id,
    b.title,
    LEFT(b.content, 200) AS overview,
    u.username AS author_name,
    u.profile_picture_url,
    COUNT(DISTINCT l.user_id) OVER (PARTITION BY b.id) AS total_likes,  -- Counts likes per blog
    COUNT(DISTINCT c.id) OVER (PARTITION BY b.id) AS total_comments,  -- Counts comments per blog
    b.created_at
FROM blogs b
JOIN users u ON b.author_id = u.id
LEFT JOIN likes l ON b.id = l.blog_id
LEFT JOIN comments c ON b.id = c.blog_id
ORDER BY b.created_at DESC
LIMIT 10 OFFSET 0;
```


### **Breakdown of Execution**

1. **`blogs`** **and** **`users`** **are joined first** → Retrieves blog and author details.
2. **`LEFT JOIN likes`** → Expands rows (if a blog has multiple likes, it appears multiple times).
3. **`LEFT JOIN comments`** → Further expands rows (each blog appears once for every like × every comment).
4. **`COUNT(DISTINCT l.user_id) OVER (PARTITION BY b.id)`**:
	- Counts **unique user likes per blog** without collapsing rows.
	- If **a blog has 5 likes and 3 comments**, this **counts likes while maintaining row expansion**.
5. **`COUNT(DISTINCT c.id) OVER (PARTITION BY b.id)`**:
	- Counts **unique comments per blog**, ensuring each comment is counted **without collapsing rows**.
6. **`ORDER BY b.created_at DESC`** **and** **`LIMIT 10 OFFSET 0`**:
	- Sorts **most recent blogs first** and **implements pagination**.

---


## **🚨 Major Problem: Row Duplication Due to Multiple Joins**


### **What Happens When Joining** **`likes`** **and** **`comments`** **Directly?**


Each **blog row is duplicated for every like and every comment**.


| **blog_id** | **title** | **author_name** | **like_user_id** | **comment_id** | **total_likes** | **total_comments** |
| ----------- | --------- | --------------- | ---------------- | -------------- | --------------- | ------------------ |
| 1           | "Intro"   | JohnDoe         | userA            | c1             | **3**           | **5**              |
| 1           | "Intro"   | JohnDoe         | userA            | c2             | **3**           | **5**              |
| 1           | "Intro"   | JohnDoe         | userB            | c1             | **3**           | **5**              |
| 1           | "Intro"   | JohnDoe         | userB            | c2             | **3**           | **5**              |
| 1           | "Intro"   | JohnDoe         | userC            | c1             | **3**           | **5**              |
| 1           | "Intro"   | JohnDoe         | userC            | c2             | **3**           | **5**              |

- **The blog originally has 3 likes and 5 comments.**
- Due to the join, **each comment multiplies the number of like rows**.
- **Incorrect row count inflates computation time**.

---


## **✅ Better Approach: Using Aggregation Before Join**


```sql
WITH like_counts AS (
    SELECT blog_id, COUNT(DISTINCT user_id) AS total_likes
    FROM likes
    GROUP BY blog_id
),
comment_counts AS (
    SELECT blog_id, COUNT(*) AS total_comments
    FROM comments
    GROUP BY blog_id
)
SELECT
    b.id AS blog_id,
    b.title,
    LEFT(b.content, 200) AS overview,
    u.username AS author_name,
    u.profile_picture_url,
    COALESCE(lc.total_likes, 0) AS total_likes,
    COALESCE(cc.total_comments, 0) AS total_comments,
    b.created_at
FROM blogs b
JOIN users u ON b.author_id = u.id
LEFT JOIN like_counts lc ON b.id = lc.blog_id
LEFT JOIN comment_counts cc ON b.id = cc.blog_id
ORDER BY b.created_at DESC
LIMIT 10 OFFSET 0;
```


### **Why is This Better?**


✅ **Pre-aggregates likes and comments, preventing row expansion**


✅ **Ensures one row per blog without unnecessary computations**


✅ **Faster query execution with lower memory and disk I/O usage**


✅ **Works well for large-scale applications (5M readers, 10K writers)**


---


## **📌 Key Differences Between These Approaches**


| **Feature**                | **Using** **`COUNT() OVER (PARTITION BY b.id)`**         | **Using Aggregation Before Join**              |
| -------------------------- | -------------------------------------------------------- | ---------------------------------------------- |
| **Row Duplication**        | ✅ Causes duplication due to joins                        | ❌ Eliminates duplication before joining        |
| **Query Performance**      | ❌ Slower for large datasets                              | ✅ Faster due to fewer rows being processed     |
| **Index Usage Efficiency** | ❌ Uses more memory for joins                             | ✅ Uses indexes efficiently on smaller datasets |
| **Memory Overhead**        | ❌ Higher (each row expansion increases computation time) | ✅ Lower (joins operate on pre-aggregated data) |
| **Use Case**               | Small datasets, exploratory queries                      | Large-scale applications                       |


---


## **Conclusion**


### **1️⃣ When to Use** **`COUNT() OVER (PARTITION BY ...)`****?**

- When you need to compute **aggregations without collapsing rows**.
- When joins **don't cause excessive row expansion**.
- When handling **windowed ranking, moving averages, or percentage distributions**.

### **2️⃣ When to Use Aggregation Before Join?**


✅ **Always use pre-aggregation when handling many-to-many joins (like blogs ↔ likes ↔ comments).**


✅ Prevents **row explosion**, making queries significantly **faster**.


✅ Ideal for **large-scale production databases** where performance is critical.


---


### **TL;DR**


❌ **Using** **`COUNT() OVER (PARTITION BY b.id)`** **causes unnecessary row expansion and slow queries.**


✅ **Pre-aggregating likes and comments in CTEs before joining improves performance by reducing unnecessary row duplication.**


**For a scalable blogging platform (5M daily readers, 10K writers), always aggregate before joining!**





