# AWS Serverless Application Model

`AWS SAM (Serverless Application Model)` is a framework that leverages a group of AWS services, it’s more accurate to describe it as an abstraction layer or extension of AWS CloudFormation designed to simplify the definition, deployment, and management of serverless applications.

The AWS Serverless Application Model (AWS SAM) is an open-source framework that simplifies the process of building and deploying serverless applications on AWS. It allows developers to define serverless resources like functions, APIs, databases, and event sources in a concise and human-readable way. AWS SAM extends AWS CloudFormation, offering shorthand syntax to express resources such as AWS Lambda functions, Amazon API Gateway APIs, Amazon DynamoDB tables, and more.

### **Application Structure**:
   A typical serverless application might include:
   - **Lambda functions** (using `AWS::Serverless::Function`).
   - **API Gateway** for routing (using `AWS::Serverless::Api`).
   - **DynamoDB tables** for data storage (using `AWS::Serverless::SimpleTable`).
   - **Event sources** such as S3 buckets or DynamoDB streams.
