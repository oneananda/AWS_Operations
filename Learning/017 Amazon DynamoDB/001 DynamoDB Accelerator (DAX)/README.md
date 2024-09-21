# DynamoDB Accelerator (DAX)

### DynamoDB Accelerator (DAX) Key Points

- **DynamoDB Accelerator (DAX)** is an in-memory cache for DynamoDB. It is specifically designed to **accelerate read performance** by caching the most frequently read data.
- Without DAX, DynamoDB typically retrieves data directly from disk, which can result in **millisecond** latency for read operations.
- By enabling DAX, frequently accessed items are cached in memory, allowing reads to occur in **microseconds**, significantly improving the performance for read-heavy applications.
  
