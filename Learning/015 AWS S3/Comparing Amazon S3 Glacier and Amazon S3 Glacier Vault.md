# Comparing Amazon S3 Glacier and Amazon S3 Glacier Vault

Amazon **S3 Glacier** and **S3 Glacier Vault** are both part of Amazon's low-cost cloud storage services aimed at long-term archival of infrequently accessed data. However, they have different purposes and functionalities. Here's a breakdown of each:

### Key Differences:

| Feature               | **S3 Glacier** (Storage Class)                           | **S3 Glacier Vault** (Container)                              |
|-----------------------|----------------------------------------------------------|--------------------------------------------------------------|
| **Purpose**            | Store individual objects for archiving                   | Managed container for storing multiple Glacier archives       |
| **Granularity**        | Works at the object (file) level                         | Works at the vault (collection) level                         |
| **Vault Lock**         | No                                                       | Yes, to enforce compliance and retention policies             |
| **Access Control**     | Standard AWS IAM access controls at the object level     | Advanced controls and policies specific to a vault            |
| **Notifications**      | No built-in notifications for retrieval                  | Supports notifications when retrieval jobs complete           |
| **Use Case**           | Basic data archival for long-term storage                | Advanced use cases with compliance and audit requirements      |


