# AWS Endpoints: Gateway vs. Interface

AWS provides two types of VPC endpoints: **Gateway Endpoints** and **Interface Endpoints**. Both enable private connectivity between your VPC and supported AWS services without using the public internet.

## Difference Table

| Feature                 | **Gateway Endpoints**                                     | **Interface Endpoints**                                   |
|-------------------------|----------------------------------------------------------|----------------------------------------------------------|
| **Definition**           | Routes traffic directly to AWS services via the VPC route table. | Uses AWS PrivateLink to provide private connectivity through Elastic Network Interfaces (ENIs). |
| **Supported Services**   | S3, DynamoDB                                             | Most AWS services and third-party services supporting PrivateLink |
| **Networking**           | Configured using the VPC route table                     | Uses ENIs with private IP addresses in VPC subnets        |
| **Cost**                 | Free to use                                              | Incurs additional costs for PrivateLink usage and ENIs    |
| **Security**             | Access managed via route tables                          | Provides private connectivity without exposing traffic to the internet |
| **Use Case**             | High-volume data access to S3 and DynamoDB               | Fine-grained access control to AWS services using ENIs    |
| **Setup Complexity**     | Simple setup via route tables                            | Requires configuration of ENIs and PrivateLink            |

## Use Cases

- **Gateway Endpoints**: Best for services like Amazon S3 and DynamoDB where you need scalable, low-cost access.
- **Interface Endpoints**: Ideal for other AWS services or third-party services where private connectivity and more granular access control are required.

## Pricing

- **Gateway Endpoints**: No additional charge; you only pay for data transfer related to the service.
- **Interface Endpoints**: You are charged for each ENI and PrivateLink data usage.

## Conclusion

Both Gateway and Interface Endpoints provide secure access to AWS services within your VPC, but they serve different purposes and come with different pricing models. 

