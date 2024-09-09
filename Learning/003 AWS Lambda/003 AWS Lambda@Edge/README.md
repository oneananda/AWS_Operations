# AWS Lambda@Edge

Combining the power of `Lambda` and `Amazon CloudFront` (which is a `Content Delivery Network` (CDN)) run serverless code at AWS edge locations around the world which is enabling to execute the code closer to the users, reducing latency and improving response times.

## AWS Lambda@Edge Q & A

### What is the max execution time ?

Up to 5 seconds   

### What I can achieve if the max execution time is 5 seconds ?

With the maximum execution time of 5 seconds in `Lambda@Edge`, you can achieve several key functionalities, especially for use cases that require quick, low-latency processing directly at the edge of the AWS network.

**Use cases:**

**Authentication and Authorization:**

Token Validation: Validate JSON Web Tokens (JWT) or other tokens to authorize requests before they reach your origin server.
Session Management: Check user session validity and enforce access controls at the edge, reducing the load on your origin server.

**A/B Testing and Experimentation:**

Traffic Splitting: Direct a percentage of traffic to different versions of your site for A/B testing without requiring changes at the origin server.
Feature Flags: Enable or disable features dynamically based on request parameters or user segments.

### What if my process exceeds 5 seconds ?

Have a `Backup Plan` for Handling Lambda@Edge Failures

- Graceful Fallback to Origin Server:
- Serve Default or Cached Content: (Not recommended for data intensive applications)
- Have secondary AWS Lambda in Regions: