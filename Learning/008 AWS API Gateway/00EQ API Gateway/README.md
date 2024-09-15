# AWS API Gateway Exam Questions

### Question 1
In AWS API Gateway, which method would you use to handle complex request transformations that involve converting XML payloads to JSON before forwarding to an AWS Lambda backend?

**Options:**

A. Use AWS Step Functions to handle transformations.  
B. Use Mapping Templates in the Integration Request.  
C. Use AWS Lambda authorizers to transform the payload.  
D. Use AWS Glue to process and transform data before sending it to Lambda.

**Answer:** B. Use Mapping Templates in the Integration Request.

**Why the other options are not right:**
- **A. Use AWS Step Functions to handle transformations:** Step Functions are designed for orchestrating workflows and managing state transitions, not for direct request/response transformations in API Gateway.
- **C. Use AWS Lambda authorizers to transform the payload:** Lambda authorizers are meant for authentication and authorization, not for transforming the request payload.
- **D. Use AWS Glue to process and transform data before sending it to Lambda:** AWS Glue is a data processing service intended for ETL (Extract, Transform, Load) tasks, and it is not designed for real-time request transformations in API Gateway.

### Question 2
Which of the following best describes how to enable detailed logging of incoming requests and backend responses in AWS API Gateway?

**Options:**

A. Enable logging in the API Gateway stage settings and use AWS CloudTrail.  
B. Enable logging in the AWS Lambda function attached to the API Gateway.  
C. Enable detailed CloudWatch logging in the API Gateway stage settings.  
D. Configure VPC Flow Logs to capture API traffic.

**Answer:** C. Enable detailed CloudWatch logging in the API Gateway stage settings.

**Why the other options are not right:**
- **A. Enable logging in the API Gateway stage settings and use AWS CloudTrail:** CloudTrail logs API activity within AWS but does not provide detailed request/response logging for API Gateway traffic.
- **B. Enable logging in the AWS Lambda function attached to the API Gateway:** While Lambda logs can provide insights, they only cover backend execution and not the request/response flow managed by API Gateway itself.
- **D. Configure VPC Flow Logs to capture API traffic:** VPC Flow Logs capture network traffic within a VPC but do not provide detailed logging specific to API Gateway request and response data.

### Question 3
How can you implement a canary release in AWS API Gateway to safely deploy new versions of your API?

**Options:**

A. Create a new stage in API Gateway and deploy the new version there.  
B. Use AWS CodeDeploy to manage canary releases directly in API Gateway.  
C. Enable canary settings in the deployment stage of API Gateway.  
D. Use AWS CloudFront to perform the canary release by splitting traffic.

**Answer:** C. Enable canary settings in the deployment stage of API Gateway.

**Why the other options are not right:**
- **A. Create a new stage in API Gateway and deploy the new version there:** Creating a new stage only separates environments and doesn’t inherently provide traffic splitting for canary deployments.
- **B. Use AWS CodeDeploy to manage canary releases directly in API Gateway:** AWS CodeDeploy manages application deployments but is not directly integrated with API Gateway’s canary settings.
- **D. Use AWS CloudFront to perform the canary release by splitting traffic:** CloudFront handles caching and content delivery and does not manage API-specific traffic splitting or canary releases.

### Question 4
Which AWS API Gateway feature allows you to secure your APIs by restricting access based on client usage, such as limiting the number of requests or controlling the rate of requests?

**Options:**

A. Enable AWS WAF (Web Application Firewall) with API Gateway.  
B. Use Usage Plans and API Keys.  
C. Set up AWS Shield for DDoS protection.  
D. Use AWS IAM roles and policies.

**Answer:** B. Use Usage Plans and API Keys.

**Why the other options are not right:**
- **A. Enable AWS WAF (Web Application Firewall) with API Gateway:** AWS WAF provides protection against common web exploits but does not manage rate limiting or usage quotas.
- **C. Set up AWS Shield for DDoS protection:** AWS Shield provides DDoS protection but does not offer granular control over request rates or user quotas.
- **D. Use AWS IAM roles and policies:** IAM roles and policies control access permissions but do not handle rate limiting or usage management for APIs.

### Question 5
In AWS API Gateway, which of the following methods can be used to minimize the cold start latency when using Lambda functions as the backend?

**Options:**

A. Increase the memory size of the Lambda function.  
B. Enable caching in API Gateway.  
C. Use Provisioned Concurrency for the Lambda function.  
D. Configure Lambda to run inside a VPC for improved performance.

**Answer:** C. Use Provisioned Concurrency for the Lambda function.

**Why the other options are not right:**
- **A. Increase the memory size of the Lambda function:** Increasing memory can speed up execution time but doesn’t directly address cold start latency.
- **B. Enable caching in API Gateway:** Caching reduces backend calls but does not impact Lambda’s cold start behavior.
- **D. Configure Lambda to run inside a VPC for improved performance:** Running inside a VPC often increases latency due to additional setup time for networking; it does not reduce cold starts.
