# DynamoDB Global Tables

**DynamoDB Global Tables** is a feature that provides **global replication** across multiple AWS regions, enabling applications to access and write data to a DynamoDB table from multiple regions.

### What it does:
- **Global replication** allows DynamoDB to replicate data across multiple regions automatically, ensuring that updates made in one region are propagated to other regions. This feature helps maintain a **globally distributed database** with consistent, low-latency access to data.
- DynamoDB **Global Tables** use **multi-active replication**, meaning you can read and write to the table in any region, and the changes will be automatically synchronized across all regions.

### Benefits of DynamoDB Global Tables:
1. **Low-latency access**: Users from different parts of the world can access data from the region closest to them, reducing read/write latency.
2. **High availability**: In case of a regional failure or disaster, data remains accessible from other regions, providing **disaster recovery** benefits.
3. **Scalability**: Global Tables automatically scale based on the traffic in each region.
4. **Consistency**: DynamoDB provides options for strong consistency within a single region, but across regions, it follows an eventually consistent model to balance performance and consistency.

### When to use DynamoDB Global Tables:
- **Multi-region applications**: When users are geographically dispersed and need access to low-latency data in different regions.
- **Disaster recovery**: To ensure that your application remains available in case of a regional outage.
- **Globally distributed workloads**: For applications like gaming, social media, or global e-commerce, where users are spread out and data needs to be synchronized globally.

