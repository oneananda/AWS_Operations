# AWS Access Control: Key Concepts to Secure Direct Access

| **Access Control Mechanism**          | **Applicable To**                        | **Description**                                                                                                     | **When to Use**                                                                                                         |
|---------------------------------------|------------------------------------------|---------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------|
| **Origin Access Identity (OAI)**      | S3 (with CloudFront)                     | A special CloudFront user identity that grants CloudFront access to private S3 content while blocking direct S3 access. | When you want to ensure your S3 content is only accessible through CloudFront, enhancing security and performance.       |
| **VPC Endpoints (PrivateLink)**       | DynamoDB, S3, and many other services    | Privately connect your VPC to AWS services without going over the public internet.                                  | When you want to secure internal traffic and avoid exposing services like DynamoDB or S3 to the internet.               |
| **API Gateway + Lambda or VPC**       | DynamoDB, RDS, Lambda, VPC               | Create a secure API as an entry point to AWS services, with fine-grained control over access using Lambda or VPC.    | When you need to expose a database or backend service through a secure and controlled API.                              |
| **IAM Roles and Policies**            | All AWS services                         | Control who can access what by assigning roles and permissions using AWS IAM.                                       | Always use IAM policies to restrict access based on roles, users, or services to ensure secure service interaction.     |
| **S3 Signed URLs**                    | S3                                       | Generate time-limited URLs for temporary access to private S3 objects.                                              | When you want to securely provide temporary access to private S3 content without making it publicly accessible.         |
| **AWS Lambda Authorizers**            | API Gateway                              | Custom authentication for APIs using Lambda functions to verify access before interacting with backend services.    | When you want to control access to your API with custom logic, such as validating JWT tokens or session-based auth.     |
| **AWS Secrets Manager / Parameter Store** | Services needing credentials         | Securely store and manage sensitive data like database credentials, API keys, and other secrets for applications.    | When you need a secure way to manage sensitive data for your services, like storing database credentials.               |
| **Amazon Cognito**                    | S3, DynamoDB, API Gateway, etc.          | Manage user authentication and permissions with token-based access control for backend services.                    | When you need to manage users and give them secure access to AWS services like S3 or DynamoDB based on their roles.     |
| **CloudFront Signed URLs / Cookies**  | S3 (via CloudFront)                      | Control access to CloudFront-distributed content by using time-limited signed URLs or cookies for secure delivery.   | When you need to deliver content via CloudFront and control access at the session or user level with signed credentials.|
| **AWS Shield / AWS WAF**              | Web applications, APIs, CloudFront       | Protect applications from DDoS attacks (AWS Shield) and block or allow specific traffic patterns (WAF).             | When you want to secure web-facing services, such as API Gateway or CloudFront, from malicious traffic or attacks.      |
| **Resource Policies**                 | S3, API Gateway, etc.                    | Fine-tune which AWS accounts, IP addresses, or VPCs can access specific resources directly.                         | When you need resource-level access control to restrict access based on account IDs, IP ranges, or VPC configurations.  |

---

## How to Use `"Key Concepts to Secure Direct Access"` Table

- **Origin Access Identity (OAI)**: Use this when you want to ensure that your S3 content is only accessible through CloudFront, blocking direct access to S3 URLs and enhancing security.
- **VPC Endpoints**: Best for securing direct access to services from within your AWS network.
- **API Gateway**: A great option if you need to control access to backend services like databases through a secure API.
- **IAM Roles**: Always use IAM roles and policies to control access at a granular level.
- **S3 Signed URLs**: Need to provide temporary access to S3 content? Use signed URLs.
- **AWS Lambda Authorizers**: Ideal for implementing custom authentication for APIs.
- **Secrets Manager**: Safely store credentials or API keys without hardcoding them.
- **Cognito**: Use Cognito to handle user sign-in and secure access based on roles.
- **CloudFront Signed URLs**: Secure your content on CloudFront by using signed URLs or cookies for access control.
- **AWS Shield / WAF**: Protect your services from attacks with DDoS protection and firewall rules.
- **Resource Policies**: Use these when you need more control over who can access your resources.

---
