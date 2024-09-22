# AWS Serverless Application Model

`AWS SAM (Serverless Application Model)` is a framework that leverages a group of AWS services, it’s more accurate to describe it as an abstraction layer or extension of AWS CloudFormation designed to simplify the definition, deployment, and management of serverless applications.

### **Application Structure**:
   A typical serverless application might include:
   - **Lambda functions** (using `AWS::Serverless::Function`).
   - **API Gateway** for routing (using `AWS::Serverless::Api`).
   - **DynamoDB tables** for data storage (using `AWS::Serverless::SimpleTable`).
   - **Event sources** such as S3 buckets or DynamoDB streams.
