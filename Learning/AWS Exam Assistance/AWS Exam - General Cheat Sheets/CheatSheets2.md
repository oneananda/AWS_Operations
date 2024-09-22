# AWS Exam Cheat Sheets

### **1. Amazon Redshift**

- **Capability**: Amazon Redshift is a data warehouse service designed for large-scale data analysis and complex queries (OLAP). It is optimized for analytical queries that require handling large datasets.
  
- **Incapability**: Redshift is not capable of processing real-time NoSQL data like DynamoDB. It is also unsuitable for real-time data ingestion or analytics, which require low-latency performance. Redshift is built for batch processing and large-scale query execution, not real-time streaming or fast transactional queries.

---

### **2. AWS Lambda**

- **Capability**: AWS Lambda is a serverless compute service that automatically scales based on event-driven triggers. It is ideal for running short-lived, stateless functions and can handle large volumes of concurrent requests. It provides automatic scaling and is designed for handling real-time, event-based operations.

- **Incapability**: Lambda is not suitable for tasks requiring persistent storage or long-running processes. It is limited to a maximum of 15 minutes execution time per invocation. For longer-running jobs or processes that need persistent state, services like EC2 or ECS would be more appropriate.

---

### **3. Auto Scaling Groups**

- **Capability**: Auto Scaling Groups (ASG) allow for automatic scaling of EC2 instances or other compute resources based on defined policies and conditions, providing elasticity to handle changes in traffic demand.

- **Incapability**: Auto Scaling cannot be applied to scale DynamoDB tables. DynamoDB uses its own mechanisms for scaling, such as on-demand capacity or provisioned capacity with auto-scaling.

---

### **4. Application Load Balancer (ALB)**

- **Capability**: ALB is designed for distributing incoming HTTP/HTTPS traffic to resources such as EC2 instances, containers, or AWS Lambda functions, with advanced features like path-based routing and SSL termination.

- **Incapability**: It does not support distributing traffic directly to DynamoDB for request routing. ALB is a Layer 7 load balancer for managing traffic to compute resources, not databases.

---

### **5. AWS IAM Identity Center**

- **Capability**: AWS IAM Identity Center (formerly AWS SSO) provides centralized access management and Single Sign-On (SSO) for web-based applications, allowing secure user access to AWS accounts and services.

- **Incapability**: It does not provide direct access to DynamoDB through single sign-on mechanisms for applications. IAM Identity Center is focused on managing user permissions for AWS services but not directly interfacing with databases like DynamoDB.

---

### **6. Amazon CloudFront**

- **Capability**: Amazon CloudFront is a content delivery network (CDN) designed to distribute and cache static and dynamic content globally, improving performance and reducing latency for users.

- **Incapability**: CloudFront cannot cache or distribute queries to DynamoDB. It is not designed to be used as a mechanism to cache database responses or distribute database traffic.

---

### **7. CloudWatch Alarms**

- **Capability**: CloudWatch Alarms are designed to monitor performance metrics (e.g., CPU utilization, error rates) and trigger actions like scaling EC2 instances or sending notifications when a threshold is breached.

- **Incapability**: CloudWatch Alarms cannot detect real-time changes in a DynamoDB table and trigger Lambda functions based on those changes. It is better suited for monitoring infrastructure metrics rather than data changes within databases.

---

### **8. AWS Systems Manager Automation**

- **Capability**: AWS Systems Manager Automation automates repetitive operational tasks, such as patch management, running scripts, and managing EC2 instances. It helps in simplifying administrative tasks with automation workflows.

- **Incapability**: It is not capable of monitoring DynamoDB for new entries and automatically invoking Lambda for real-time processing. This type of data-triggered automation is better handled by DynamoDB Streams in conjunction with AWS Lambda.

---

### **9. Simple Notification Service (SNS)**

- **Capability**: SNS is a fully managed pub/sub messaging service used to send notifications or messages to subscribing systems or users. It supports a variety of protocols, including HTTP/HTTPS, email, and SMS.

- **Incapability**: SNS is not designed to directly monitor DynamoDB tables for changes or to trigger Lambda functions based on table updates. For data changes in DynamoDB, you would use DynamoDB Streams combined with AWS Lambda.

---

### **10. Amazon S3 Transfer Acceleration**

- **Capability**: S3 Transfer Acceleration speeds up the transfer of large files to S3 by routing data through Amazon’s globally distributed edge locations, optimizing uploads over long distances.

- **Incapability**: It is not designed for real-time streaming or content delivery optimization for global users. It accelerates uploads but does not handle caching or streaming of content like a Content Delivery Network (CDN) such as CloudFront.

---

### **11. Amazon Route 53**

- **Capability**: Route 53 is a scalable Domain Name System (DNS) web service that provides highly available domain registration, routing traffic based on health checks, and geolocation.

- **Incapability**: Route 53 is not capable of providing content delivery or caching for streaming applications. It does not cache content or optimize video delivery; instead, it resolves domain names to low-latency servers.

---

### **12. Amazon Redshift (Revisit)**

- **Capability**: Redshift is best suited for Online Analytical Processing (OLAP), handling complex queries over large datasets.

- **Incapability**: Redshift is not designed for real-time data ingestion and analytics. It is optimized for batch processing, not low-latency, real-time workloads.

---

### **13. Amazon FSx for Lustre**

- **Capability**: FSx for Lustre is designed for high-performance computing (HPC) and machine learning workloads, offering fast parallel file processing. It is optimized for Linux workloads and integrates with Amazon S3.

- **Incapability**: FSx for Lustre cannot serve Windows clients or support Active Directory integration. It is not suitable for Windows-based file sharing and workloads that require SMB protocols.

---

### **14. Amazon FSx for Windows File Server**

- **Capability**: FSx for Windows File Server is a fully managed file system optimized for Windows workloads, including file sharing with SMB protocols and integration with Active Directory.

- **Incapability**: FSx for Windows is not optimized for high-performance Linux-based HPC workloads. For those workloads, FSx for Lustre would be more appropriate.

---

### **15. Elastic File System (EFS)**

- **Capability**: Amazon EFS provides scalable file storage for use with AWS services and on-premises resources. It is optimized for Linux-based workloads using POSIX permissions.

- **Incapability**: EFS is not designed for Windows file sharing or integration with Active Directory. It is specifically optimized for Linux environments, not Windows-based file systems.

---

### **16. VPC Peering**

- **Capability**: VPC Peering allows for direct network connectivity between two VPCs, enabling traffic to route between them as if they are within the same network.

- **Incapability**: VPC Peering does not scale well for service sharing across multiple accounts or VPCs. Each VPC requires individual peering connections, leading to administrative overhead. For larger setups, AWS Transit Gateway would be more efficient.

---
