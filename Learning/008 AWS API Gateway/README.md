# AWS API Gateway

`AWS API Gateway` is a managed service from `Amazon Web Services` that allows to `create, publish, maintain, and secure APIs` (Application Programming Interfaces) at any scale. Imagine it as a bridge between the users or clients and the backend services we have, like AWS Lambda functions, EC2 instances, or other HTTP endpoints.

`Please note :` This can't be used as a complete backend solution, we need to add AWS Lambda to AWS API Gateway to have it as a backend.

```
Imagine you have a shop, and people want to buy things from you. Instead of letting everyone directly into your shop, you set up a counter outside where someone checks what people want, takes their order, and brings them what they need. This way, your shop stays organized, and you can control who gets what.


`AWS API Gateway` is like that counter for your apps. It sits between the users (or other apps) and your backend services (like servers or databases) and manages all the requests coming in.
```

**Key Points to Understand:**

1. **API Creation and Management:** AWS API Gateway lets you easily create RESTful APIs, WebSocket APIs, and HTTP APIs. You can define different methods (like GET, POST, etc.) and connect these to backend services or AWS Lambda functions.

2. **Security:** You can secure your APIs using various authentication and authorization methods, such as AWS IAM roles, API keys, or custom authorizers using AWS Lambda. This ensures only authorized users can access your API.

3. **Scalability:** It automatically scales the API requests as needed, handling anything from a few requests per second to thousands without you having to worry about infrastructure management.

4. **Monitoring and Analytics:** AWS API Gateway integrates with CloudWatch, allowing you to monitor API metrics such as request counts, latencies, and error rates. This is helpful in keeping an eye on your API's performance.

5. **Cost-Effective:** You pay only for the API calls you receive and the amount of data transferred out. It's a pay-as-you-go service, making it cost-effective, especially for startups or projects with varying traffic.

6. **Easy Integration:** It integrates seamlessly with other AWS services like Lambda, DynamoDB, and S3, making it easier to build serverless applications where you don’t have to manage servers or infrastructure.

7. **Throttling and Caching:** You can set rate limits to control how many requests your API can handle per second to protect your backend services. You can also enable caching to reduce the load on your backend and improve the performance of your API.

Think of AWS API Gateway like a traffic controller for your data and services. It decides which data should go where and ensures that only the right vehicles (or users) can access the highway (your services). It's like having a guard at the entrance of your colony who checks ID cards before letting anyone enter. AWS API Gateway does the same for your backend services, making sure everything is organized, secure, and working smoothly without you needing to invest heavily in infrastructure.

---

### What AWS API Gateway Can Do / Can't Do but Achievable via Other AWS Services

| **What AWS API Gateway Can Do**                                | **What AWS API Gateway Can't Do**                                 | **Achievable via Other AWS Services**                       |
|---------------------------------------------------------------|-------------------------------------------------------------------|-------------------------------------------------------------|
| **1. Create and Manage APIs:** Easily create RESTful, WebSocket, and HTTP APIs. | **1. Directly Store Data:** It can't store data like a database. | Use **Amazon S3**, **DynamoDB**, or **RDS** for data storage. |
| **2. Secure APIs:** Use API keys, AWS IAM, or custom authorizers for security. | **2. Host Servers:** It doesn’t host servers or manage your backend services directly. | Use **AWS EC2**, **ECS**, or **AWS Lambda** for hosting and server management. |
| **3. Scale Automatically:** Automatically handles more requests as traffic increases. | **3. Process Data:** It doesn’t process or compute data. | Use **AWS Lambda**, **EC2**, or **ECS** for data processing and computation. |
| **4. Monitor and Log:** Tracks performance, errors, and usage through AWS CloudWatch. | **4. Provide Storage:** It doesn't provide storage solutions. | Use **Amazon S3**, **DynamoDB**, **RDS**, or **Aurora** for storage needs. |
| **5. Caching:** Reduce load on your backend by caching responses to frequent requests. | **5. Full Backend Logic:** It can't run complex backend logic or business rules. | Use **AWS Lambda** or **Step Functions** for running backend logic and workflows. |
| **6. Throttling and Rate Limiting:** Controls the number of requests to protect your backend. | **6. Directly Build UI:** It’s not used for building front-end user interfaces. | Use **AWS Amplify** or traditional web frameworks hosted on **EC2** or **S3 + CloudFront**. |
| **7. Easy Integration:** Connects with AWS services like Lambda, S3, DynamoDB, etc. | **7. Handle State:** It doesn’t manage state or sessions. | Use **AWS DynamoDB**, **ElasticCache**, or **S3** for state management. |
| **8. Cost-Effective:** Pay-per-use model keeps costs down, especially for startups. | **8. Complex Data Transformation:** Limited in transforming complex data formats. | Use **AWS Lambda** or **AWS Glue** for complex data transformation tasks. |
| **9. API Versioning:** Manage different versions of your API easily. | **9. Handle Long-Running Processes:** Not suitable for managing long-running tasks directly. | Use **AWS Step Functions** or **Amazon SQS** with **Lambda** for long-running processes. |

---

##  AWS API Gateway Use cases

### 1. **Serverless Web Applications:**

### 2. **Microservices Architecture:**

### 3. **Mobile Backend APIs:**

### 4. **Real-Time Applications with WebSocket APIs:**

### 5. **API Monetization:**

### 6. **Legacy Application Modernization:**

### 7. **Multi-Region Deployment for Low Latency:**

### 8. **Rate Limiting and Throttling for Protection:**

### 9. **API Gateway as a Proxy:**

### 10. **Private APIs for Internal Applications:**

---

## AWS API Gateway Unique features

**API Lifecycle Management:**

API Gateway includes built-in tools for managing the lifecycle of the APIs, such as versioning, staging environments (like dev, test, prod), and stage-level settings.

**Canary Deployments:**

API Gateway supports canary deployments, allowing to deploy new API versions to a small subset of users for testing purposes before rolling it out fully. 

**AWS WAF (Web Application Firewall) Integration:**

API Gateway easily integrates with AWS WAF.

**Built-In Mock Integration:**

We can use API Gateway’s built-in mock integration to test your APIs without setting up any backend. 

---

## AWS API Gateway Limitations

1. **Payload Size Limits:** You can’t send or receive really large files—API Gateway has a cap of 10 MB for REST APIs. For WebSocket APIs, it's even smaller, just 128 KB.

2. **Timeout Constraints:** If your backend takes longer than 29 seconds to respond, API Gateway will cut off the connection. So, it’s not great for things that need more time to process.

3. **Request and Response Limits:** There’s a cap on how many requests you can handle per second by default (10,000), and if you suddenly get a lot of traffic, you might hit limits and start rejecting requests.

4. **Integration Latency:** Adding API Gateway can slow things down a bit, especially when it connects to AWS Lambda functions, which can have startup delays.

5. **Throttling and Rate Limits:** Even if your backend can handle more, API Gateway might throttle (slow down) requests if they go over the set limits, which can affect user experience.

6. **Limited Support for Certain Protocols:** It works well with REST, HTTP, and WebSocket APIs, but if you need something like gRPC or SOAP, you’re out of luck without adding extra workarounds.

7. **Complexity in Transformations:** Changing the data format from one type to another (like JSON to XML) can get tricky and involves learning a special language (Velocity Template Language).

8. **Limited Error Handling:** Error handling is quite basic, so if something goes wrong, it might not give you the detailed feedback you need to fix the problem quickly.

9. **Vendor Lock-In:** Since it’s tightly connected with AWS, moving your API to another platform isn’t straightforward and could mean a lot of rework.

10. **Cost Considerations at Scale:** Costs can add up quickly with high traffic, especially if you’re using extra features like caching or custom domain names.

11. **Cache Management Limitations:** The caching options aren’t very flexible, which might not always fit perfectly with what your app needs to perform best.

12. **Security Configuration Complexity:** Setting up security, like permissions or custom authentication, can get complicated and time-consuming, making it easy to make mistakes.

13. **Cold Start Latency with Lambda Integrations:** When using Lambda, sometimes there’s a delay (cold start) when the function hasn’t been run for a while, which can slow down your API responses unexpectedly.

14. **Monitoring and Debugging Challenges:** Finding and fixing issues can be tough because the built-in tools are limited, often requiring extra setup with AWS CloudWatch or other services.

15. **Lack of Built-In Support for SOAP APIs:** If you’re working with older systems that use SOAP, API Gateway doesn’t natively support it, meaning you’ll have to create custom solutions or add a layer to handle it.

---

## Advanced Concepts

### Canary Deployments and Traffic Shifting

Canary deployments in API Gateway allow you to release new API versions to a small subset of users before a full rollout. You can specify the percentage of traffic that should be routed to the new deployment while the rest continue using the stable version.


---
