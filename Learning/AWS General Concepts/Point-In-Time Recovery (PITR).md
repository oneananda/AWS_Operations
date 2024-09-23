# Point-In-Time Recovery (PITR) in AWS

**Point-In-Time Recovery (PITR) in AWS** refers to the ability to restore a database to any specific point in time within a retention window. This feature is particularly useful for recovering from accidental data deletions or modifications.

In AWS, PITR is available in **Amazon RDS** and **Amazon DynamoDB**. Here's a brief overview of how PITR works for these services:

### 1. **PITR in Amazon RDS**
- **Purpose:** PITR allows you to restore your RDS databases (for supported engines like MySQL, PostgreSQL, MariaDB, Oracle, and SQL Server) to any point in time within a specified retention period (from 1 to 35 days).
- **How it works:** 
  - AWS continuously backs up your database transactions and stores them in Amazon S3. 
  - You can restore to any second within the backup retention period.
  - When you initiate a point-in-time recovery, AWS creates a new DB instance with the restored data.

### 2. **PITR in Amazon DynamoDB**
- **Purpose:** DynamoDB's PITR enables continuous backups of your DynamoDB table and restores it to any second within the past 35 days.
- **How it works:**
  - DynamoDB backs up your data automatically, and the backups are stored without disrupting table performance or availability.
  - You can restore the table to any point in time within the last 35 days.

### Key Benefits of PITR in AWS:
- **Minimizes data loss** by allowing fine-grained recovery options.
- **Automatic backups** without user intervention.
- **Granular restoration** to the second, allowing precise recovery.
  