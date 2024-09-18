## Amazon RDS Backup

Amazon RDS (Relational Database Service) provides several features for backing up your databases, ensuring data durability and recovery. Here’s an overview of the backup options and strategies available with Amazon RDS:

### 1. **Automated Backups**

**Automated Backups** are a built-in feature that allows you to automatically back up your RDS instances. The key features include:

- **Backup Window**: You can specify a backup window during which the automated backups will occur. AWS handles the backup process within this time frame.
- **Retention Period**: Configure the retention period for automated backups from 1 to 35 days. The default is 7 days.
- **Backup Frequency**: Automated backups are taken daily and include the entire database instance, including database snapshots and transaction logs.
- **Point-in-Time Recovery**: Allows recovery of your database to any point within the backup retention period.

