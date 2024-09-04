# AWS Lambda Concurrency

`Concurrency` refers to the number of function instances that are serving requests at a given time. Each instance handles one request at a time.

`Concurrent Executions:` Each Lambda function scales automatically by creating more instances when more requests come in. The maximum number of instances that can run simultaneously is determined by concurrency limits.

## Concurrency Types:

- Reserved Concurrency:
- Provisioned Concurrency:
- Unreserved Concurrency:

## Default Concurrency Limit:

By default, AWS accounts have a soft limit of 1,000 concurrent executions for all Lambda functions combined. This limit can be increased by requesting a quota increase through the AWS Service Quotas console.

## Throttling:

When the concurrency limit is reached, additional requests are throttled, causing them to receive a 429 Too Many Requests error.

Throttling helps prevent any one function from using up all available resources, which could impact other functions.

