# DynamoDB vs DocumentDB

### Key differences between **DynamoDB** and **DocumentDB**:

| Feature                  | **DynamoDB**                                             | **DocumentDB**                                       |
|--------------------------|----------------------------------------------------------|------------------------------------------------------|
| **Data Model**           | Key-value and document database, schema-less.            | Document-based, stores JSON-like documents (BSON).   |
| **Query Language**       | Simplified query language with basic filtering, uses indexes (Primary, GSI, LSI). | MongoDB-compatible query language, supports complex queries and aggregation. |
| **Use Cases**            | High throughput, low-latency access (e.g., gaming, IoT, real-time bidding). | Complex querying and indexing (e.g., content management, customer profiles). |
| **Scalability**          | Automatic horizontal scaling of throughput and storage.  | Horizontal scaling using replicas; vertical scaling by increasing instance size. |
| **Performance**          | Single-digit millisecond response times; supports in-memory caching with DAX. | Designed for read-heavy workloads; scales based on cluster size. |
| **Data Consistency**     | Offers both eventual and strong consistency.             | Eventual consistency for replica sets; single-document ACID transactions. |
| **Pricing Model**        | Based on throughput (read/write capacity) and storage; On-demand and provisioned modes. | Based on instance size, storage volume, I/O operations, and data transfer. |
| **Managed Features**     | Fully managed with automatic backups, encryption, point-in-time recovery, multi-region replication (Global Tables). | Fully managed with automated backups, encryption, monitoring, and read replicas. |
| **Indexing**             | Primary keys, Global Secondary Indexes (GSI), and Local Secondary Indexes (LSI). | Supports rich indexing and querying on document fields. |
| **Transactions**         | Supports ACID transactions with certain limitations.     | Supports single-document ACID transactions. |
| **Caching**              | DynamoDB Accelerator (DAX) for in-memory caching.        | No built-in caching; use external caching mechanisms if needed. |
| **Compatibility**        | Proprietary to AWS with API-specific queries.            | MongoDB-compatible, allowing the use of MongoDB drivers and tools. |


