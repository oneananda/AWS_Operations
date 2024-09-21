# DynamoDB Accelerator (DAX)

### DynamoDB Accelerator (DAX) Key Points

- **DynamoDB Accelerator (DAX)** is an in-memory cache for DynamoDB. It is specifically designed to **accelerate read performance** by caching the most frequently read data.
- Without DAX, DynamoDB typically retrieves data directly from disk, which can result in **millisecond** latency for read operations.
- By enabling DAX, frequently accessed items are cached in memory, allowing reads to occur in **microseconds**, significantly improving the performance for read-heavy applications.
  
### Important to note:

- DAX improves **read performance**, not **write performance**.
- The performance improvement depends on how well the application uses read-heavy workloads. DAX benefits scenarios where there are many repeated reads of the same data.

In summary, enabling **DAX** can indeed reduce read latency from milliseconds to microseconds, making this statement accurate for read-heavy applications like the AR game described in the scenario.

**"Enable DynamoDB Accelerator (DAX) to improve the performance from milliseconds to microseconds"** is **true** in the context of **read performance**.
