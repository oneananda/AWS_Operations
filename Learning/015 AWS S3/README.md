# AWS S3

`Amazon S3 (Simple Storage Service)` is an object storage service provided by AWS (Amazon Web Services). It is designed to store and retrieve any amount of data, at any time, from anywhere on the web. Here are some key points about S3:

S3 has different storage classes, such as S3 Standard, S3 Intelligent-Tiering, S3 Standard-IA (Infrequent Access), S3 Glacier, and S3 Glacier Deep Archive for varying access patterns and costs.

### Comparison of Storage Classes:

| Storage Class             | Durability           | Availability  | Retrieval Time           | Cost                     | Use Case                              |
|---------------------------|----------------------|---------------|--------------------------|--------------------------|---------------------------------------|
| **S3 Standard**            | 11 nines (99.999999999%) | 99.99%        | Milliseconds             | High storage cost         | Frequently accessed data             |
| **S3 Intelligent-Tiering** | 11 nines             | 99.9%         | Milliseconds             | Medium, plus monitoring   | Unpredictable access patterns         |
| **S3 Standard-IA**         | 11 nines             | 99.9%         | Milliseconds             | Low storage, retrieval fee | Infrequently accessed data           |
| **S3 One Zone-IA**         | 11 nines (1 AZ)      | 99.5%         | Milliseconds             | Lower cost, retrieval fee  | Infrequent, non-critical data        |
| **S3 Glacier**             | 11 nines             | N/A           | Minutes to hours         | Very low storage cost     | Archival with occasional retrieval   |
| **S3 Glacier Deep Archive**| 11 nines             | N/A           | 12–48 hours              | Lowest storage cost       | Long-term, rarely accessed data      |

