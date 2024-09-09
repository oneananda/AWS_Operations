# AWS Lambda CPU / Memory

## What are the memory limits for AWS Lambda?
The memory allocated to a Lambda function can be set between **128 MB and 10,240 MB (10 GB)** in increments of 1 MB.

## What are the CPU limits for AWS Lambda?
AWS Lambda does not have a direct CPU limit that you can explicitly set, but the CPU power allocated to a Lambda function is proportional to the amount of memory assigned to it. The relationship between memory and CPU is linear.

Though the limit is automatically set to **5.7 vCPUs**.

## How can we monitor the CPU and memory utilization of an AWS Lambda function?
We can monitor the CPU and memory utilization of an AWS Lambda function using **AWS CloudWatch**. CloudWatch provides metrics such as memory usage, duration, and the number of invocations.

For deeper insights, we can use **AWS X-Ray** to trace and analyze performance, helping identify bottlenecks related to CPU or memory constraints.

## What happens if the AWS Lambda function exceeds the allocated memory?
If an AWS Lambda function exceeds the allocated memory limit, the function execution will be terminated, and an `OutOfMemory` error will be returned.

> **Note:** We cannot configure auto allocation of memory in case of memory exceeds; only manual configuration to allocate more memory is allowed.
