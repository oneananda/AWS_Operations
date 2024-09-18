# AWS RDS Straight-to-Straight Migration

Migrating databases directly between two relational database systems—referred to as "straight-to-straight" migration—typically involves several steps to ensure data integrity, compatibility, and minimal downtime.

### **Schema Conversion**

- **Schema Mapping**: Convert the database schema from the source database to the target database. This includes tables, indexes, constraints, and stored procedures.
  - Tools like **AWS Schema Conversion Tool (SCT)** or **SQL Server Migration Assistant (SSMA)** can assist in this process by automating schema conversion and highlighting conversion issues.
- **Manual Adjustments**: Manually adjust any schema elements that are not automatically converted, such as certain database-specific features or custom data types.

### **Tools and Services**

- **AWS Database Migration Service (DMS)**: Helps migrate databases to AWS with minimal downtime.
- **Database Migration Service (DMS) from other providers**: Offers similar capabilities for different cloud platforms.
- **Manual Scripts and Custom Tools**: For migrations that require a high level of customization.


