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


---

### **1. AWS WAF (Web Application Firewall)**
   - **Capability**: AWS WAF is primarily used to filter HTTP/HTTPS requests to web applications. It helps protect applications from attacks such as SQL injection and cross-site scripting (XSS).
   - **Incapability**: It **cannot be used to manage or filter outbound traffic** or control access to network resources like VPC endpoints.

---

### **2. AWS EC2 (Elastic Compute Cloud) Auto Scaling**
   - **Capability**: EC2 Auto Scaling is used to automatically add or remove EC2 instances based on load, following specific scaling policies.
   - **Incapability**: EC2 Auto Scaling is not meant for **managing ECS or Fargate scaling**. ECS Service Auto Scaling is designed for that purpose.

---

### **3. AWS S3 Glacier**
   - **Capability**: S3 Glacier is a long-term, low-cost storage service intended for archiving data with slower retrieval times.
   - **Incapability**: **S3 Glacier is not ideal for direct data migration** using services like Snowball. It’s better to first migrate data to S3 and then use lifecycle policies to move objects to Glacier.

---

### **4. Amazon EBS (Elastic Block Store)**
   - **Capability**: EBS is a block storage service used for individual EC2 instances. It provides persistent storage for running instances.
   - **Incapability**: **EBS is not designed for storing large-scale, frequently changing data** across multiple instances for processing. Services like S3 or DynamoDB Streams are more suited for such tasks.

---

### **5. AWS Lambda**
   - **Capability**: AWS Lambda is a serverless compute service that automatically scales and processes short-lived tasks based on events.
   - **Incapability**: While Lambda is highly scalable, it is not suitable for tasks that require **persistent storage** or **long-running processes**. EC2 or ECS might be more suitable for complex, long-running jobs.

---

### **6. AWS Direct Connect**
   - **Capability**: AWS Direct Connect provides a dedicated network connection between on-premises data centers and AWS, offering consistent network performance.
   - **Incapability**: **Direct Connect requires set-up time and cannot solve immediate data transfer issues** with low-bandwidth connections. In such cases, Snowball is a better option for migrating large data volumes without stressing internet connectivity.

---

### **7. AWS S3 Transfer Acceleration**
   - **Capability**: S3 Transfer Acceleration is designed to speed up uploads to S3 over long distances by using AWS edge locations.
   - **Incapability**: It does not address the issue of **saturated internet bandwidth**. It requires stable, high-speed internet connections to be effective. Snowball would be better for migrating large amounts of data when internet bandwidth is limited.

---

### **8. Amazon S3 Glacier Vault**
   - **Capability**: Glacier Vault is part of the Glacier service used to store data for long-term archiving with high durability and low cost.
   - **Incapability**: **Directly sending data to Glacier using Snowball or other services** adds unnecessary complexity. It’s more efficient to use S3 first and then automate the transition to Glacier.

---

### **9. Amazon RDS (Relational Database Service)**
   - **Capability**: RDS is a managed service that makes it easy to set up, operate, and scale a relational database in the cloud.
   - **Incapability**: It **does not handle high-performance, low-latency requirements** for inter-node communications in High-Performance Computing (HPC) applications. For those use cases, cluster placement groups and high-throughput storage like FSx for Lustre are better.

---

### **10. Amazon Route 53 Private Hosted Zone**
   - **Capability**: A private hosted zone allows you to manage internal DNS records within your VPC, enabling internal DNS resolution without exposing them to the internet.
   - **Incapability**: **It does not route or manage traffic between VPCs**. To securely connect VPCs or external resources without traversing the internet, PrivateLink, Transit Gateway, or VPC Peering should be used.

---

### **11. Cluster Placement Group**
   - **Capability**: Cluster Placement Groups in EC2 allow you to place instances close together within a single AZ for low-latency, high-throughput performance, making them ideal for HPC applications.
   - **Incapability**: **Cluster Placement Groups are not designed for fault tolerance**. They are focused on performance rather than isolating failures. Partition or Spread Placement Groups should be used for fault isolation.

---

### **12. AWS Snowcone**
   - **Capability**: AWS Snowcone is a small-scale edge computing and data transfer device designed for environments where space, power, or bandwidth are constrained.
   - **Incapability**: It **cannot handle large-scale data transfers** like Snowball Edge or Snowball devices. Snowcone is limited to smaller use cases (up to 8TB).

---

### **13. AWS Snowball with EC2 Compute Capability**
   - **Capability**: AWS Snowball Edge devices come with compute capabilities, allowing you to process data locally before transferring it to AWS.
   - **Incapability**: **Processing complex, long-running applications** that need continuous, large-scale compute (such as EC2 or ECS tasks) might not be suitable for Snowball Edge’s local EC2 instances, especially when dealing with massive datasets. Cloud-based services might provide more scalability.

---

### **14. AWS Global Accelerator**
   - **Capability**: AWS Global Accelerator improves global application performance by routing traffic to the nearest AWS region based on network conditions, using AWS edge locations.
   - **Incapability**: **It does not help in transferring large volumes of data (e.g., 500TB)** in a cost-effective manner, especially over constrained internet connections. Snowball or Direct Connect would be better suited for such cases.

---

### **15. AWS Network Load Balancer (NLB)**
   - **Capability**: NLB efficiently distributes incoming traffic at the network level, suitable for applications requiring extreme performance in terms of throughput and low latency.
   - **Incapability**: **It does not help improve inter-node performance** for applications like HPC that require low-latency communication between nodes. Cluster Placement Groups are more suited for inter-node communication within a single AZ.

---

### **16. EC2 Multi-Attach EBS Volumes**
   - **Capability**: Multi-Attach allows EBS volumes to be attached to multiple EC2 instances simultaneously, enabling shared storage between instances.
   - **Incapability**: **It is not efficient for processing large datasets across distributed systems**, as the shared storage model might introduce complexity and bottlenecks. S3 or DynamoDB with Lambda or ECS would offer better scalability and performance.

---

### **17. Amazon Aurora**
   - **Capability**: Aurora is a high-performance, fully managed relational database engine compatible with MySQL and PostgreSQL.
   - **Incapability**: It is **not designed for applications requiring real-time, low-latency, high-throughput processing** between multiple nodes, such as HPC applications. For these cases, consider in-memory databases or file systems like FSx for Lustre.

---

