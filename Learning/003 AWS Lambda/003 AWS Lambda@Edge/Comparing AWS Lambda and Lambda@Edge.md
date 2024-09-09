# AWS Lambda vs. Lambda@Edge Comparison

| Feature / Characteristic       | AWS Lambda                                          | Lambda@Edge                                          |
|------------------------------- |-----------------------------------------------------|------------------------------------------------------|
| **Execution Locations**        | Runs in AWS regions                                 | Runs in AWS edge locations globally                  |
| **Maximum Execution Time**     | Up to 15 minutes                                    | Up to 5 seconds                                      |
| **Memory Allocation**          | 128 MB to 10,240 MB                                 | 128 MB to 1,024 MB                                   |
| **CPU Allocation**             | Proportional to memory                              | Proportional to memory                               |
| **Triggers**                   | API Gateway, S3, DynamoDB, Kinesis, etc.            | CloudFront events (Viewer Request, Origin Request, Viewer Response, Origin Response) |
| **Latency**                    | Higher latency, depends on the region               | Lower latency, runs closer to the user               |
| **Scaling**                    | Automatic scaling based on incoming requests        | Automatic scaling based on incoming CloudFront requests |
| **Use Cases**                  | General-purpose serverless computing                | Content modification, A/B testing, authentication, dynamic content generation at the edge |
| **Security**                   | Supports VPC, IAM roles, and fine-grained permissions | Supports IAM roles, runs in a secure, isolated environment |
| **Service Integrations**       | Wide range of AWS service integrations              | Limited to integrations that make sense for edge computing (e.g., not suitable for all AWS services) |
| **Pricing**                    | Based on memory, execution time, and requests       | Based on memory, execution time, requests, and data transfer |
| **Benefits**                   | Flexible, supports a broad range of use cases, higher resource limits | Low latency, global execution, ideal for edge-specific use cases like CDN enhancements |
| **Limitations**                | Region-dependent latency, longer cold starts        | Shorter execution time, limited memory and service access |
| **State Management**           | Stateless, can use AWS services like DynamoDB for state | Stateless, typically stateless by design at the edge |
| **VPC Support**                | Yes, can access VPC resources                       | No direct VPC access                                 |
| **Environment Variables**      | Supported                                            | Supported                                            |
| **Environment Configurations** | Rich environment configurations available           | Limited environment configurations                   |
| **Monitoring and Logging**     | CloudWatch, X-Ray                                   | CloudWatch, limited X-Ray support                    |
| **Cold Start Impact**          | Noticeable, especially for larger functions         | Reduced, runs closer to users with potentially smaller payloads |

## Key Differences:
- **Execution Time and Location:** AWS Lambda supports longer execution times (up to 15 minutes) and runs in specific AWS regions, while Lambda@Edge runs globally at AWS edge locations with a maximum of 5 seconds execution time.
- **Latency and Use Cases:** Lambda@Edge is designed for low-latency use cases close to the end user, such as content delivery optimizations, whereas AWS Lambda serves more general-purpose, serverless computing needs.
- **Resource Limits:** AWS Lambda has higher resource limits in terms of memory and execution time, while Lambda@Edge is more constrained to suit its edge use cases.
- **Scaling and Pricing:** Both services automatically scale with demand, but their pricing structures reflect their intended use cases—Lambda for general compute and Lambda@Edge for edge-related processing.

