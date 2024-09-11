# AWS Lambda vs. Lambda@Edge Latency Comparison

This table provides a comparison of the typical request-response latencies between AWS Lambda and Lambda@Edge, highlighting their differences in cold start, warm start, and response times, as well as how geographical proximity affects performance.

| **Feature**               | **AWS Lambda**                                    | **Lambda@Edge**                                  |
|---------------------------|---------------------------------------------------|--------------------------------------------------|
| **Cold Start Latency**    | - Typically ranges from 100 ms to a few seconds.  | - Slightly faster cold starts, ranging from 50 ms to a few seconds. |
|                           | - Factors: Language runtime, package size, VPC.   | - Similar factors, but optimized for edge locations. |
| **Warm Start Latency**    | - Fast, usually between 1 ms to 100 ms.           | - Very fast, typically 1 ms to 100 ms.           |
|                           | - Reuses initialized containers.                  | - Benefits from even lower latency due to edge proximity. |
| **Response Times**        | - Generally milliseconds to a few hundred ms.     | - Often under 100 ms due to edge execution.      |
|                           | - Dependent on function logic and whether warm.   | - Proximity to the user significantly reduces response time. |
| **Geographical Proximity**| - Latency depends on the AWS region used.         | - Runs at the nearest AWS edge location to the user, providing minimal latency. |
|                           | - Best for centralized processing needs.          | - Ideal for low-latency, globally distributed use cases. |

## Summary

- **AWS Lambda** is best suited for applications where regional latency is acceptable, or geographical distribution isn't a primary concern.
- **Lambda@Edge** excels in scenarios requiring low latency by processing requests closer to the user's location, making it ideal for use cases like real-time data processing, content customization, and other edge computing needs.
