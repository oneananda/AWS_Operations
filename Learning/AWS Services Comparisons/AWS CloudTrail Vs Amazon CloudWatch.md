# AWS CloudTrail Vs Amazon CloudWatch

**CloudTrail** and **CloudWatch** are both AWS monitoring services but serve different purposes:

### 1. **AWS CloudTrail**
- **Purpose**: Provides visibility into user activity by recording API calls and changes made within the AWS environment.
- **Use Case**: Used primarily for auditing, compliance, governance, and risk management.
- **Data Captured**: Records actions taken through the AWS Management Console, SDKs, CLI, and other services, capturing details like:
  - The identity of the caller (user, role, etc.)
  - The time of the API call
  - The source IP address
  - The response elements
- **Log Format**: JSON-formatted log files containing the details of API calls.
- **Retention**: Can store logs in S3 and use for long-term auditing and historical analysis.
- **Example**: Tracking changes in an EC2 instance's configuration or who deleted an S3 bucket.
