# Amazon Inspector

`Amazon Inspector` is an automated security assesment tool focussed on identifying vulnerablities and scans security best practices in AWS.

**Amazon Inspector** works specifically with certain AWS services, focusing on assessing security vulnerabilities and compliance for workloads running in those services. Here’s a breakdown of where **Amazon Inspector** can and cannot operate in terms of AWS services:

### **Amazon Inspector: Summary of Supported and Unsupported Services:**

| **Service**                 | **Amazon Inspector Support**            |
|-----------------------------|-----------------------------------------|
| Amazon EC2                  | ✔️ Supported                           |
| Amazon ECR                  | ✔️ Supported                           |
| Amazon Lambda (container-based)**| Limited (via ECR image scanning) |
| Amazon S3                   | ❌ Not Supported                       |
| Amazon RDS                  | ❌ Not Supported                       |
| Amazon DynamoDB             | ❌ Not Supported                       |
| Amazon IAM                  | ❌ Not Supported                       |
| Amazon SQS/SNS              | ❌ Not Supported                       |
| AWS Networking (VPC, Route 53) | ❌ Not Supported                   |
| Amazon CloudFront, API Gateway | ❌ Not Supported                   |

**Amazon Inspector** focuses on **Amazon EC2** instances and **Amazon ECR** for container image security. For other AWS services like databases, storage, and identity management, you will need to use complementary AWS security services such as **Amazon Macie**, **AWS Security Hub**, **AWS IAM Access Analyzer**, and others to cover those areas.