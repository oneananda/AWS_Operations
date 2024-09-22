# AWS Exam - General Cheat Sheets

1. **Amazon Redshift**: 
   - **Not capable of** processing real-time NoSQL data like DynamoDB.
   - **Designed for** analytical queries and large-scale data analysis.

2. **Auto Scaling Groups**:
   - **Not capable of** being applied to DynamoDB tables.
   - **Designed for** scaling EC2 instances or other compute resources.

3. **Application Load Balancer (ALB)**:
   - **Not capable of** integrating directly with DynamoDB for distributing requests.
   - **Designed for** distributing traffic to EC2 instances, containers, or Lambda functions.

4. **AWS IAM Identity Center**:
   - **Not capable of** allowing users direct access to DynamoDB via single sign-on (for applications).
   - **Designed for** providing user access management and SSO for web-based applications.

5. **CloudFront**:
   - **Not capable of** being used as an origin for DynamoDB to cache database queries.
   - **Designed for** distributing and caching static content, like from S3 or API Gateway.

6. **CloudWatch Alarms**:
   - **Not capable of** detecting new entries in a DynamoDB table to trigger a Lambda function.
   - **Designed for** monitoring performance metrics, such as CPU usage or error rates.

7. **Systems Manager Automation**:
   - **Not capable of** detecting new entries in a DynamoDB table and automatically invoking a Lambda function for real-time data changes.
   - **Designed for** automating operational tasks, such as running scripts or managing infrastructure.

8. **SNS (Simple Notification Service)**:
   - **Not intended for** directly monitoring or triggering actions based on changes in DynamoDB tables.
   - **Designed for** distributing notifications and messages between systems or users.


### 1. **Subnets and Availability Zones**  
**Issue:** Subnets are usually tied to a specific Availability Zone.  
- **Incorrect Understanding:** Creating subnets across a single Availability Zone (AZ) will not improve availability.  
- **Correction:** The key to improving availability is distributing instances across **multiple AZs**, not just across subnets within one AZ.

---

### 2. **SFTP and NFS**  
**Issue:** AWS Transfer for SFTP is primarily used for **SFTP-based** workloads.  
- **Incorrect Understanding:** Using SFTP for an **NFS system** adds unnecessary complexity and is not optimized for automatic synchronization.  
- **Correction:** For NFS workloads, **AWS DataSync** is a better option for syncing NFS data to S3.

---

### 3. **AWS Glue and NFS Sync**  
**Issue:** **AWS Glue** is an ETL (Extract, Transform, Load) service used for data integration and analytics.  
- **Incorrect Understanding:** AWS Glue is not intended for backing up data from on-premises NFS servers and does not handle periodic synchronization tasks.  
- **Correction:** **AWS DataSync** is the correct service for syncing NFS data to S3.

---

### 4. **AWS Direct Connect vs. DataSync for Automation**  
**Issue:** **AWS Direct Connect** provides a dedicated network connection between an on-premises data center and AWS, but it lacks automation for periodic data transfers.  
- **Incorrect Understanding:** Direct Connect alone cannot automate data synchronization.  
- **Correction:** **AWS DataSync** offers built-in automation and scheduling for periodic backups, which is essential for cost-effective small volume data synchronization.

---

### 5. **AWS Certificate Manager (ACM) and Encryption at Rest**  
**Issue:** **AWS Certificate Manager (ACM)** is used for managing **SSL/TLS certificates**, which encrypt data **in transit**.  
- **Incorrect Understanding:** ACM is not used for encrypting data at rest.  
- **Correction:** **Encryption at rest** for services like **Amazon EBS** and **Amazon RDS** is handled via **AWS KMS (Key Management Service)**.

---

### 6. **Direct Connect and High Resiliency**  
**Issue:** **Multiple VIFs (Virtual Interfaces)** over a single **Direct Connect (DX) connection** do not provide physical redundancy.  
- **Incorrect Understanding:** Adding multiple VIFs does not improve resiliency if the underlying DX connection fails.  
- **Correction:** To achieve the highest resiliency, you should have **multiple Direct Connect connections** at **multiple DX locations**.

---

### 7. **FSx for Windows vs. FSx for Lustre**  
**Issue:** **Amazon FSx for Windows File Server** is designed for **Windows-based environments**.  
- **Incorrect Understanding:** FSx for Windows is not optimized for Linux or **high-performance computing (HPC) workloads**.  
- **Correction:** **Amazon FSx for Lustre** is specifically optimized for **Linux** and HPC workloads, providing high-throughput and integration with **Amazon S3** for persistent storage.

---

### 8. **Elastic Load Balancer (ELB) and Cross-AZ Availability**  
**Issue:** A single **Elastic Load Balancer (ELB)** behind instances in one Availability Zone does not provide **high availability**.  
- **Incorrect Understanding:** Distributing instances in a single AZ does not ensure high availability.  
- **Correction:** To achieve high availability, instances need to be spread across **multiple Availability Zones**.

---

### 9. **Amazon EFS (Elastic File System) vs. FSx for Lustre for HPC**  
**Issue:** **Amazon EFS** is not optimized for **high-performance computing (HPC)** workloads that require high-speed parallel processing.  
- **Incorrect Understanding:** EFS is better suited for general-purpose storage and not for the high throughput needed in HPC.  
- **Correction:** **FSx for Lustre** is designed for HPC workloads, providing high-speed data processing and seamless integration with **S3**.

---

### 10. **S3 Glacier for Frequent Data Access**  
**Issue:** **Amazon S3 Glacier** is used for **long-term archival storage** and is not suitable for **frequently accessed output files**.  
- **Incorrect Understanding:** Using Glacier for HPC workload outputs would lead to latency and high retrieval costs.  
- **Correction:** For frequently accessed data, using **Amazon S3 (Standard or Intelligent-Tiering)** with **FSx for Lustre** is more appropriate.

---

### 1. **Amazon S3 Transfer Acceleration**
   - **Not capable of:**
     - **Real-time streaming or content delivery optimization** for global users. S3 Transfer Acceleration is designed to **speed up uploads** to S3 by routing data through edge locations, but it does not handle caching or streaming content.
   - **Best suited for:**
     - Faster uploads of large files to S3 over long distances, but **not for streaming or content delivery.**

### 2. **Amazon Route 53**
   - **Not capable of:**
     - **Content delivery or caching** for streaming applications. Route 53 is a DNS service and cannot cache or optimize video delivery.
     - **Real-time streaming optimization**; it only helps direct traffic to low-latency servers but does not cache content.
   - **Best suited for:**
     - Domain name resolution and **routing traffic based on latency** or geolocation, but it’s not involved in content delivery like a CDN.

### 3. **AWS Global Accelerator**
   - **Not capable of:**
     - **Content delivery or caching** for real-time or on-demand streaming. AWS Global Accelerator speeds up traffic routing over AWS’s global network but does not cache content at edge locations like a CDN.
   - **Best suited for:**
     - **Global traffic acceleration** by improving the performance of applications hosted in AWS regions, particularly when quick failover and global routing are needed. However, it is not meant for caching or streaming optimization.

### 4. **Amazon SQS (Simple Queue Service)**
   - **Not capable of:**
     - **Real-time data streaming**. SQS is designed for **message queuing**, which introduces inherent delays and is not suitable for millisecond-level responsiveness.
     - Handling **high-throughput streaming** data, which requires real-time or near-real-time performance.
   - **Best suited for:**
     - Asynchronous processing and decoupling services, where real-time performance is not required.

### 5. **Amazon RedShift**
   - **Not capable of:**
     - **Real-time data ingestion and analytics**. RedShift is a **data warehouse** designed for large-scale batch processing and complex queries, but it is not suited for real-time data or streaming workloads.
   - **Best suited for:**
     - **OLAP (Online Analytical Processing)**, handling complex queries on large datasets for data warehousing and analytics, but **not for low-latency real-time data analysis.**

### 6. **Amazon EFS (Elastic File System)**
   - **Not capable of:**
     - **Windows file sharing** or **integration with Active Directory**. EFS is designed for Linux-based workloads using POSIX permissions and does not support Windows-specific protocols like SMB.
   - **Best suited for:**
     - **Linux workloads** requiring shared storage, but not for Windows-based file systems or Active Directory integration.

### 7. **Amazon S3 Bucket with ACLs**
   - **Not capable of:**
     - **Serving as a direct replacement for a Windows file share**. S3 is an **object storage service**, and ACLs do not provide the fine-grained file system-like permissions required for Windows shares.
   - **Best suited for:**
     - **Object storage** for static files, backups, and media, but not for replacing Windows file shares or handling Windows-specific access controls.

### 8. **Amazon FSx for Lustre**
   - **Not capable of:**
     - **Serving Windows clients or supporting Active Directory**. FSx for Lustre is optimized for **high-performance computing (HPC)** workloads and cannot be used for Windows-based file sharing.
   - **Best suited for:**
     - **HPC workloads**, such as machine learning, media rendering, and simulations, but not for general-purpose file sharing or Windows workloads.

### 9. **AWS ClassicLink**
   - **Not capable of:**
     - Connecting modern VPCs or **exposing services between different VPCs across accounts**. ClassicLink is an outdated service designed to link EC2 Classic instances to VPCs, but it is no longer the best practice.
   - **Best suited for:**
     - **Legacy EC2 Classic environments**, but not for modern VPC use cases or service sharing across multiple accounts.

### 10. **Amazon FSx for Lustre (again)**
   - **Not capable of:**
     - Supporting **SMB protocol** for Windows file shares or integration with Active Directory, making it unsuitable for Windows-based workloads.
   - **Best suited for:**
     - **Linux HPC workloads**, where fast, parallel file processing is needed.

### 11. **VPC Peering**
   - **Not capable of:**
     - **Efficient service sharing across multiple AWS accounts or VPCs**. VPC peering allows VPC-to-VPC connectivity, but it requires individual peering connections between every VPC, leading to **high administrative overhead**.
   - **Best suited for:**
     - **Direct VPC-to-VPC network connectivity** in simple scenarios, but it does not scale well for sharing services across many accounts or regions.

---

### Summary:
This table summarizes **what each service is not capable of** and its best use cases:

| AWS Service               | Not Capable Of | Best Suited For |
|---------------------------|----------------|-----------------|
| **S3 Transfer Acceleration** | Streaming or content delivery | Accelerating S3 uploads globally |
| **Route 53**               | Content delivery, caching | DNS resolution, latency-based routing |
| **Global Accelerator**     | Content caching for streaming | Routing traffic globally for faster access to AWS |
| **SQS**                    | Real-time streaming | Message queuing, asynchronous communication |
| **RedShift**               | Real-time data ingestion | Data warehousing, large-scale analytics |
| **EFS**                    | Windows file sharing | Linux shared file systems with POSIX permissions |
| **S3 + ACLs**              | Windows file sharing | Object storage with static file permissions |
| **FSx for Lustre**         | Windows workloads, SMB/AD integration | HPC workloads, parallel processing |
| **ClassicLink**            | Modern VPC connectivity | Legacy EC2 Classic to VPC communication |
| **VPC Peering**            | Service sharing across multiple accounts | VPC-to-VPC connectivity |




