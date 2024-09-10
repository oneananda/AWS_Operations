# AWS Lambda Exam Questions

**Question: 1**

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

