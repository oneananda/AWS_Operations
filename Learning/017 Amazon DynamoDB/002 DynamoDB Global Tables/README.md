# DynamoDB Global Tables

**DynamoDB Global Tables** is a feature that provides **global replication** across multiple AWS regions, enabling applications to access and write data to a DynamoDB table from multiple regions.

### What it does:
- **Global replication** allows DynamoDB to replicate data across multiple regions automatically, ensuring that updates made in one region are propagated to other regions. This feature helps maintain a **globally distributed database** with consistent, low-latency access to data.
- DynamoDB **Global Tables** use **multi-active replication**, meaning you can read and write to the table in any region, and the changes will be automatically synchronized across all regions.
