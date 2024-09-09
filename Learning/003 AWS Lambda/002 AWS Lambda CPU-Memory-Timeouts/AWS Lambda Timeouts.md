# AWS Lambda Timeouts

AWS Lambda set timeouts to terminate the instances once the time is over to avoid indefinite execution.

## Timeout Configuration:

**Default Timeout:** The default timeout for an AWS Lambda function is set to 3 seconds.

**Configurable Range:** You can configure the timeout to be anywhere between 1 second and 15 minutes (900 seconds).


## Can I automatically set the timeout ?

No, AWS Lambda does not provide a way to automatically set or adjust timeouts based on function performance or execution behaviour.

## How retry work ?

When a function times out, AWS Lambda considers it a failed execution, this can be retried if configured.

## What if my function is actually running beyond 15 minutes ?

This can't be possible with a single Lambda function,

We can go for the following alternatives,

**Alternatives for Long-Running Tasks in AWS Lambda**

- We can break the tasks and run as a group of Lambda functions called `Step-Functions`
- Use AWS Fargate or Amazon ECS for Long-Running Containers, in case if the tasks cannot to be break down to multiple tasks
- AWS Batch for Batch Processing, there is no time contraint applied for this.
- Amazon EMR (Elastic MapReduce) for Big Data Processing.
- AWS Glue for ETL (Extraction, Transformation and Loading) and Data Transformation

