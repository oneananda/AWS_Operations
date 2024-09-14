# AWS Lambda Exam Questions

## **Question: 1**

A global e-commerce company needs to implement a solution to analyze real-time shopping behavior and cart activities of its customers across various regions. The solution should ensure low latency and process data close to the customers to enhance user experience, while also supporting real-time analytics for personalized recommendations. Which AWS services should the company use to meet these requirements?

**Options:**

A) Integrate CloudFront with Lambda@Edge for processing requests near the users and use Amazon Kinesis for real-time data streaming and analytics. Store the processed data in Amazon S3 for durable storage.

B) Use CloudFront with AWS Lambda at regional data centers for data processing, and Amazon RDS for storing and querying the processed data in real-time.

C) Implement AWS Global Accelerator with AWS Lambda to process requests in close proximity to users, and use Amazon Redshift for data warehousing and real-time analytics.

D) Use CloudFront with AWS Fargate for containerized data processing close to users and Amazon EMR for large-scale data analytics.

**Answer:** A) Integrate CloudFront with Lambda@Edge for processing requests near the users and use Amazon Kinesis for real-time data streaming and analytics. Store the processed data in Amazon S3 for durable storage.

**Explanation:**

- `CloudFront with Lambda@Edge` allows the processing of requests closer to users by executing Lambda functions at AWS edge locations, reducing latency.
- `Amazon Kinesis` is suitable for real-time data streaming and analytics, allowing the company to analyze shopping behavior and cart activities in real time.
- `Amazon S3` provides durable storage for processed data, making it accessible for further analysis and long-term retention.

---

## **Question: 2**

A media streaming platform uses Amazon S3 to store and deliver video content to its users. After monitoring the traffic, you notice that `other unauthorized websites are embedding your videos`, leading to increased bandwidth costs and potential copyright violations.

**What is the MOST effective way to prevent unauthorized websites from embedding your video content?**

1. `Enable server-side encryption` on your S3 bucket to protect the video files from unauthorized access.
2. `Implement AWS Lambda@Edge with CloudFront` to inspect incoming requests and block any requests that don't originate from your domain.
3. `Use S3 bucket policies` to deny access to all public requests and allow access only through `CloudFront distributions with signed URLs`.
4. `Migrate the videos to Amazon RDS` and use database queries to serve the content only to authenticated users.

### The best answer here is:

**3. Use S3 bucket policies to deny access to all public requests and allow access only through CloudFront distributions with signed URLs.**

**Explanation:**

Imagine you're running a media streaming platform, and your videos are stored in Amazon S3. You want your videos to be available to your users, but you also want to ensure that only your website can serve them. The problem is, other websites are sneaking in and using your videos without permission, which can rack up your costs and create other issues.

To fix this, you should:

1. **Block all public access:** This means your videos won't be freely available on the internet for just anyone to grab.
  
2. **Use CloudFront with signed URLs:** CloudFront is like a security guard for your content. It sits in front of your S3 bucket and only lets in requests that you approve. Signed URLs act as special passes that your website can use to request the videos. These passes are unique, can expire, and are hard to forge, so other websites won't be able to use your videos even if they somehow get the URLs.

By doing this, you ensure that only your users, coming through your website, can access the video content. It's like putting your videos behind a velvet rope where only your paying guests can enter. This approach not only protects your content but also controls costs and maintains the quality of service for your users.


### Explanation of why the other options aren't the best:

**1. Enable server-side encryption on your S3 bucket to protect the video files from unauthorized access.**

**Why it's not right:**
Encryption is like locking your valuables in a safe—it keeps the data secure from prying eyes. But if you leave the safe open, anyone can still take what’s inside. In this case, encryption doesn’t stop other websites from linking to your videos. It’s good for security, but it doesn’t solve the problem of preventing others from using your videos without permission.

**2. Implement AWS Lambda@Edge with CloudFront to inspect incoming requests and block any requests that don't originate from your domain.**

**Why it's not right:**
This is like hiring a security guard who checks each person trying to watch your videos. It works, but it’s way more complex than you need. You’d have to set up and manage extra code, which can get tricky and expensive. It’s an overcomplicated solution when a simpler one (like using CloudFront signed URLs) would do the job just fine.

**4. Migrate the videos to Amazon RDS and use database queries to serve the content only to authenticated users.**

**Why it's not right:**
This is like trying to store movies in a filing cabinet—it’s just not built for that. RDS is great for storing data like customer records or orders, but not for videos. Moving videos there would make everything slower, more costly, and way too complicated. Plus, it doesn’t actually stop other sites from linking to your content—it’s just the wrong tool altogether.

**The Best Choice (Option 3):**
Using CloudFront with signed URLs is like setting up a VIP access line. Only people with a special pass (the signed URL) can see your videos, and those passes can expire or be restricted so others can’t use them. It’s simple, straightforward, and keeps your content protected without all the unnecessary complexity of the other options.

---