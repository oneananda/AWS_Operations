# AWS Exam - General Cheat Sheets

1. **Amazon Redshift**: 
   - **Not capable of** processing real-time NoSQL data like DynamoDB.
   - **Designed for** analytical queries and large-scale data analysis.

2. **Auto Scaling Groups**:
   - **Not capable of** being applied to DynamoDB tables.
   - **Designed for** scaling EC2 instances or other compute resources.

3. **Application Load Balancer (ALB)**:
   - **Not capable of** integrating directly with DynamoDB for distributing requests.
   - **Designed for** distributing traffic to EC2 instances, containers, or Lambda functions.

4. **AWS IAM Identity Center**:
   - **Not capable of** allowing users direct access to DynamoDB via single sign-on (for applications).
   - **Designed for** providing user access management and SSO for web-based applications.

5. **CloudFront**:
   - **Not capable of** being used as an origin for DynamoDB to cache database queries.
   - **Designed for** distributing and caching static content, like from S3 or API Gateway.

6. **CloudWatch Alarms**:
   - **Not capable of** detecting new entries in a DynamoDB table to trigger a Lambda function.
   - **Designed for** monitoring performance metrics, such as CPU usage or error rates.

7. **Systems Manager Automation**:
   - **Not capable of** detecting new entries in a DynamoDB table and automatically invoking a Lambda function for real-time data changes.
   - **Designed for** automating operational tasks, such as running scripts or managing infrastructure.

8. **SNS (Simple Notification Service)**:
   - **Not intended for** directly monitoring or triggering actions based on changes in DynamoDB tables.
   - **Designed for** distributing notifications and messages between systems or users.

