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

#### **Question 51: Database services**
1. **RedShift for both use cases**:
   - **Reason**: RedShift is optimized for long-running, complex analytics queries, not for handling frequent, fast transactional queries like those required by a customer support dashboard.

2. **RDS for both use cases**:
   - **Reason**: RDS is designed for transactional workloads, but it is not optimized for handling complex analytics queries over large datasets, as RedShift is.

#### **Question 52: High-performance storage for HPC**
1. **Amazon FSx for Windows for high-performance parallel storage**:
   - **Reason**: FSx for Windows is optimized for Windows workloads and file systems, not for Linux-based high-performance computing (HPC) workloads that require parallel processing, like FSx for Lustre.

2. **Amazon S3 for high-performance parallel storage**:
   - **Reason**: S3 is object storage and not designed for high-performance parallel file systems. It is better suited for scalable storage rather than parallel workloads.

3. **Amazon EFS for cold data storage**:
   - **Reason**: EFS is more suitable for shared access file storage and is not optimized for cost-effective cold data storage compared to Amazon S3, which is more suited for infrequent access.

#### **Question 53: Serverless application on AWS (RDS timeouts)**
1. **Change the database to an Amazon DynamoDB database**:
   - **Reason**: DynamoDB is a NoSQL database, and moving from RDS (a relational database) would involve significant application changes, which doesn't align with the goal of minimizing code changes.

2. **Change the class of the instance of your database**:
   - **Reason**: Simply changing the instance class would increase the number of connections, but would not address connection pooling and efficient connection management, which is better handled by RDS Proxy.

3. **Reduce the concurrency rate for your Lambda Function**:
   - **Reason**: Lowering the concurrency rate would reduce the load on the database, but it would also reduce the application's performance and wouldn't solve the underlying database connection management issue.

#### **Question 54: NAS file share replacement**
1. **Amazon Elastic File System (Amazon EFS)**:
   - **Reason**: EFS is optimized for Linux-based workloads. Since the web server is Windows-based, FSx for Windows File Server is a better option.

2. **AWS Storage Gateway**:
   - **Reason**: Storage Gateway is more suited for hybrid environments and would not provide the full durability and resilience needed for a fully cloud-native solution in this case.

3. **Amazon EBS**:
   - **Reason**: EBS is block storage attached to individual EC2 instances and cannot be used as a shared network file system for multiple instances, unlike FSx for Windows.

#### **Question 55: Resiliency of web application**
1. **Attach EBS volumes to each EC2 instance**:
   - **Reason**: EBS volumes are tied to specific Availability Zones and cannot be shared across multiple instances in different zones. This setup would not be resilient across zones.

2. **Use S3 One Zone-Infrequent Access**:
   - **Reason**: One Zone-IA stores data in only one Availability Zone, so it does not provide the resilience required for this web application.

3. **Mount instance store on each EC2 instance**:
   - **Reason**: Instance store is ephemeral, meaning that data is lost when the instance is stopped or terminated. It is not suitable for storing persistent data that needs resilience.

#### **Question 56: CloudTrail log analysis**
1. **Write custom scripts to query CloudTrail logs using AWS Glue**:
   - **Reason**: Writing and maintaining custom scripts requires more effort and complexity compared to using native solutions like QuickSight for querying and dashboard creation.

2. **Search CloudTrail logs with Amazon RedShift**:
   - **Reason**: RedShift is overkill for searching and analyzing logs from CloudTrail. It requires setting up and managing the data warehouse, which is more effort than necessary.

3. **Create custom script using AWS Batch**:
   - **Reason**: Writing custom scripts to process logs using AWS Batch involves extra management effort and does not provide the simplicity that Amazon QuickSight offers for visualization and analysis.

#### **Question 57: Badge reader system architecture**
1. **Direct messages to AWS Lambda using Amazon Route 53**:
   - **Reason**: Route 53 is a DNS service and is not meant for routing HTTPS traffic or connecting directly to Lambda. API Gateway should be used instead.

2. **Use EC2 instance to process messages**:
   - **Reason**: Using an EC2 instance introduces additional complexity for managing servers. Serverless solutions with API Gateway and Lambda are better suited for this kind of task.

3. **S3 gateway endpoint and Site-to-Site VPN**:
   - **Reason**: This setup is too complex for the use case of processing badge reader messages and does not provide real-time processing as API Gateway and Lambda do.

#### **Question 58: Improving database performance**
1. **Increase the storage capacity to 24 TiB with magnetic storage**:
   - **Reason**: Magnetic storage is slower and would reduce performance further. It is not appropriate for high-performance databases.

2. **Use DynamoDB and AWS DMS**:
   - **Reason**: DynamoDB is a NoSQL database and would require significant changes to the application, which is not suitable for a relational database workload like this.

3. **Increase the RDS instance size and use Provisioned IOPS**:
   - **Reason**: This solution would increase costs without addressing the inefficiency of storing large BLOBs directly in the database.

#### **Question 60: Job processing with EC2 Auto Scaling**
1. **Use SNS to send jobs to EC2 Auto Scaling group**:
   - **Reason**: SNS is a pub/sub service and does not provide durable message queueing like SQS. It is not designed for holding jobs that need to be processed asynchronously.

2. **Scale based on network usage**:
   - **Reason**: Network usage may not correlate well with the number of jobs to be processed, which can lead to inefficient scaling.

3. **Scale based on CPU usage**:
   - **Reason**: CPU usage scaling does not account for the number of jobs in the queue, leading to inefficient resource management.

#### **Question 63: Large data migration**
1. **Provision AWS Direct Connect and migrate over the link**:
   - **Reason**: Direct Connect is a long-term solution but may take weeks to provision, which is not feasible for a 1-month migration window.

2. **Use AWS VPN CloudHub**:
   - **Reason**: VPN connections generally have lower bandwidth and are not suitable for migrating large datasets like 50TB within a short timeframe.

3. **Use AWS VPN with a Virtual Private Gateway**:
   - **Reason**: AWS VPN has bandwidth limitations, and transferring 50TB would take too long compared to using AWS Snowball.

---

### 1. **Amazon FSx for Windows File Server**
   - **Capability**: Fully managed file system optimized for Windows workloads, supports SMB protocols, and integrates with Active Directory.
   - **Incapability**: Not suitable for high-performance Linux-based HPC workloads. For HPC, FSx for Lustre would be a better choice.

### 2. **Amazon S3 Glacier**
   - **Capability**: Optimized for long-term archival storage with infrequent access and low retrieval speeds.
   - **Incapability**: Not suitable for real-time data retrieval or frequently accessed data because retrieval can take minutes to hours.

### 3. **AWS Lambda**
   - **Capability**: Serverless compute service that automatically scales and runs code in response to triggers like API Gateway or S3 events.
   - **Incapability**: Not ideal for long-running workloads. Lambda functions have a maximum execution time of 15 minutes. For longer-running tasks, EC2 or AWS Fargate would be better suited.

### 4. **Amazon RDS (Relational Database Service)**
   - **Capability**: Managed relational database service that automates tasks such as backups, patching, and scaling.
   - **Incapability**: Not suitable for NoSQL workloads. For NoSQL, services like DynamoDB or DocumentDB would be more appropriate.

### 5. **Amazon ECS (Elastic Container Service)**
   - **Capability**: Highly scalable and fully managed container orchestration service that supports both EC2 and Fargate as compute options.
   - **Incapability**: ECS is not cloud-agnostic and can only be used on AWS. For multi-cloud or open-source portability, Kubernetes (e.g., Amazon EKS) would be more appropriate.

### 6. **AWS Glue**
   - **Capability**: Fully managed ETL (Extract, Transform, Load) service that prepares and transforms data for analytics.
   - **Incapability**: Not suitable for transactional workloads. AWS Glue is designed for batch data processing and is not optimized for real-time data transformations.

### 7. **Amazon DynamoDB**
   - **Capability**: Fully managed NoSQL database service designed for key-value and document data with single-digit millisecond response times.
   - **Incapability**: DynamoDB is not optimized for complex relational queries with joins. For those workloads, a relational database like Amazon RDS would be more appropriate.

### 8. **Amazon Kinesis Data Firehose**
   - **Capability**: Real-time data streaming and loading to services like S3, Redshift, and Elasticsearch.
   - **Incapability**: Not suitable for low-latency, high-volume data processing requiring custom processing logic. For complex stream processing, Kinesis Data Streams or Apache Kafka might be a better option.

### 9. **Amazon SQS (Simple Queue Service)**
   - **Capability**: Fully managed message queuing service that decouples microservices, serverless applications, and distributed systems.
   - **Incapability**: Not suitable for real-time messaging or pub/sub messaging patterns. For pub/sub, Amazon SNS or Apache Kafka would be more appropriate.

### 10. **Amazon Elastic File System (EFS)**
   - **Capability**: Fully managed file storage service for use with EC2 instances, with scalable and elastic capacity.
   - **Incapability**: Not optimized for low-latency, high-performance compute (HPC) workloads. For those scenarios, Amazon FSx for Lustre is a better option.

### 11. **AWS Step Functions**
   - **Capability**: Orchestrates workflows and automates applications by coordinating tasks across AWS services like Lambda, ECS, and Fargate.
   - **Incapability**: Not suitable for highly complex workflows with conditional branching and data-intensive computations. For data pipelines with conditional logic, a more advanced solution like Apache Airflow on AWS might be more suitable.

### 12. **Amazon Aurora**
   - **Capability**: Relational database engine compatible with MySQL and PostgreSQL, designed for scalability and high availability.
   - **Incapability**: Not optimized for NoSQL workloads. For NoSQL databases, Amazon DynamoDB or DocumentDB would be a better choice.

### 13. **Amazon CloudFront**
   - **Capability**: Content delivery network (CDN) that speeds up the delivery of static and dynamic content via edge locations.
   - **Incapability**: Not ideal for reducing latency for backend processing or database queries. It is intended for content delivery, not application or database performance improvements.

### 14. **AWS Elastic Beanstalk**
   - **Capability**: Provides a platform as a service (PaaS) for deploying and scaling web applications and services developed with popular languages.
   - **Incapability**: Not suitable for complex, multi-tier architectures requiring fine-grained control over infrastructure. For such cases, a more customizable service like AWS CloudFormation or Terraform would be better.

### 15. **Amazon Athena**
   - **Capability**: Interactive query service that makes it easy to analyze data in S3 using standard SQL.
   - **Incapability**: Not suitable for large-scale data warehousing or complex multi-source joins. For more complex analytics, Amazon Redshift is a better fit.

### 1. **Amazon EC2 Spot Instances**
   - **Capability**: Spot Instances are great for workloads that can tolerate interruptions, such as development or test environments that don't need constant availability.
   - **Incapability**: Not suitable for production environments where interruptions are not acceptable, as Spot Instances can be interrupted by AWS if capacity is needed.

### 2. **Amazon EC2 Reserved Instances**
   - **Capability**: Reserved Instances offer a significant discount for predictable workloads, such as production environments that run 24/7.
   - **Incapability**: Not flexible for workloads that vary in usage patterns or need short-term computing resources, as it requires a long-term commitment.

### 3. **Amazon S3 Glacier**
   - **Capability**: Optimized for long-term archival storage and infrequent data access.
   - **Incapability**: Not ideal for real-time data retrieval or frequent access due to slow retrieval times (minutes to hours).

### 4. **Amazon Elastic Container Service (ECS)**
   - **Capability**: Fully managed container orchestration service, integrated with AWS Fargate or EC2 for running containers in a serverless or managed environment.
   - **Incapability**: ECS is not cloud-agnostic and is locked to AWS, making it unsuitable for organizations looking for a multi-cloud or open-source solution. Kubernetes (EKS) would be a better fit for that.

### 5. **Amazon DynamoDB**
   - **Capability**: Fully managed NoSQL database that provides single-digit millisecond performance, scaling easily with demand.
   - **Incapability**: Not suited for complex queries, such as joins or transactions, which are typical in relational databases. Amazon RDS or Amazon Aurora would be better for such requirements.

### 6. **Amazon Aurora Global Database**
   - **Capability**: Supports multi-region deployments with low-latency read replicas, making it ideal for geographically distributed applications.
   - **Incapability**: Not a NoSQL database, so it’s not suitable for use cases that require NoSQL features. For NoSQL, use DynamoDB.

### 7. **AWS WAF (Web Application Firewall)**
   - **Capability**: Protects web applications from common exploits (e.g., SQL injections, DDoS).
   - **Incapability**: Not designed for network-level protection. For that, a network-based solution like AWS Shield or security groups would be more appropriate.

### 8. **Amazon S3 Standard-IA (Infrequent Access)**
   - **Capability**: Designed for infrequently accessed data with lower storage costs but higher retrieval costs.
   - **Incapability**: Not optimized for frequently accessed data. For frequent access, S3 Standard or Intelligent-Tiering is better.

### 9. **Amazon RDS (Relational Database Service)**
   - **Capability**: Provides managed relational databases (MySQL, PostgreSQL, etc.), automating tasks like backups and scaling.
   - **Incapability**: Not suitable for NoSQL workloads or highly scalable, unstructured data. Use DynamoDB for NoSQL.

### 10. **Amazon Kinesis Data Firehose**
   - **Capability**: Efficiently delivers streaming data to AWS destinations like S3, Redshift, or Elasticsearch.
   - **Incapability**: Not ideal for scenarios requiring real-time, low-latency stream processing. For real-time processing, Kinesis Data Streams would be more appropriate.

### 11. **AWS DataSync**
   - **Capability**: Simplifies data transfers between on-premises storage and AWS (e.g., S3, EFS) using AWS Direct Connect for secure, high-speed transfers.
   - **Incapability**: Not suitable for small or low-volume data transfers where simpler solutions like S3 Transfer Acceleration may suffice.

### 12. **AWS Lambda**
   - **Capability**: Ideal for event-driven, short-duration compute tasks. It automatically scales with usage and is great for serverless applications.
   - **Incapability**: Not suited for long-running processes due to its 15-minute execution time limit. EC2 or Fargate should be used for long-running tasks.

### 13. **AWS Transit Gateway**
   - **Capability**: Connects multiple VPCs and on-premises networks through a central hub, simplifying networking across large architectures.
   - **Incapability**: Not a suitable solution for content delivery or web performance improvements. For those, CloudFront would be more appropriate.

### 14. **Amazon RDS Multi-AZ**
   - **Capability**: Provides high availability and failover support for relational databases within a single region.
   - **Incapability**: Not a cross-region replication solution. For multi-region deployments with low-latency read capabilities, Aurora Global Database is better suited.

### 15. **Amazon CloudFront**
   - **Capability**: Caches and accelerates the delivery of static and dynamic content, improving load times and reducing latency for end users.
   - **Incapability**: Not designed for handling backend processing or database queries. It's a content delivery solution, not an application acceleration tool.

---

### 2. **Amazon S3 Standard**
   - **Capability**: S3 Standard provides highly durable, scalable, and low-latency storage for frequently accessed data.
   - **Incapability**: S3 Standard is not optimized for cost-effective storage of infrequently accessed data. For such cases, S3 Standard-IA or S3 Glacier should be used.

---

### 3. **Amazon S3 Glacier**
   - **Capability**: Glacier is designed for long-term archival storage where infrequent access is expected.
   - **Incapability**: Glacier is not suitable for frequent, near-real-time access. Retrieval times can range from minutes to hours, making it inappropriate for frequently accessed data.

---

### 4. **Amazon SQS (Standard)**
   - **Capability**: SQS Standard is a highly scalable queuing service that ensures at-least-once message delivery and can handle large throughput.
   - **Incapability**: SQS Standard does not guarantee message order. If strict message ordering is required, SQS FIFO is more appropriate.

---

### 5. **Amazon SQS FIFO**
   - **Capability**: SQS FIFO ensures that messages are processed in the exact order they are sent, which is important for applications requiring strict ordering.
   - **Incapability**: SQS FIFO is not optimized for high throughput compared to SQS Standard, making it less suitable for use cases that demand extremely high message throughput.

---

### 6. **Amazon Kinesis Data Streams**
   - **Capability**: Kinesis Data Streams provides real-time data streaming for large-scale data ingestion and processing.
   - **Incapability**: Kinesis Data Streams requires more complex setup and management compared to simpler queuing services like SQS. It is less suitable for use cases where simplicity and ease of setup are prioritized.

---

### 7. **Amazon API Gateway**
   - **Capability**: API Gateway allows for creating and managing REST APIs, including rate-limiting, security, and usage plans.
   - **Incapability**: API Gateway cannot buffer or queue incoming requests. For applications that need to decouple request ingestion from processing, SQS or Kinesis is better suited.

---

### 8. **Amazon CloudFront**
   - **Capability**: CloudFront is a global CDN that distributes and caches content for faster access to end-users.
   - **Incapability**: CloudFront is not suitable for applications requiring real-time or interactive server-side computing, as it primarily caches static or dynamic content for delivery.

---

### 9. **AWS DataSync**
   - **Capability**: AWS DataSync automates the movement of data between on-premises storage and AWS, supporting SMB and NFS protocols.
   - **Incapability**: DataSync is not suitable for real-time data transfers or for scenarios where extremely low-latency data synchronization is required. It is designed for bulk or scheduled transfers.

---

### 10. **Amazon Snowball Edge**
   - **Capability**: Snowball Edge provides local compute and storage capabilities, ideal for disconnected or remote environments.
   - **Incapability**: Snowball Edge is not suitable for environments where continuous, real-time data streaming and processing are required, as it involves physical transport for data migration.

---

### 11. **Amazon EFS (Elastic File System)**
   - **Capability**: EFS provides scalable, fully managed NFS file storage for use with AWS services and on-premises resources, and it grows and shrinks automatically.
   - **Incapability**: EFS is not optimized for high-performance workloads that require low-latency block storage. For such workloads, Amazon EBS is a better option.

---

### 12. **Amazon EBS (Elastic Block Store)**
   - **Capability**: EBS provides block-level storage volumes for use with Amazon EC2, offering high performance and persistence.
   - **Incapability**: EBS volumes can only be attached to a single EC2 instance in a single Availability Zone, making them unsuitable for distributed applications needing concurrent access from multiple instances.

---

### 13. **Amazon RDS (Relational Database Service)**
   - **Capability**: RDS is a managed relational database service supporting databases like MySQL, PostgreSQL, SQL Server, and Oracle.
   - **Incapability**: RDS is not suitable for NoSQL use cases or unstructured data. For NoSQL workloads, DynamoDB or Amazon DocumentDB would be more appropriate.

---

### 14. **AWS Lambda**
   - **Capability**: Lambda allows running code without provisioning servers, automatically scaling based on demand.
   - **Incapability**: Lambda is not suitable for long-running tasks beyond its execution limit (15 minutes). For such cases, EC2 or ECS would be better suited.

---

### 15. **Amazon CloudFormation**
   - **Capability**: CloudFormation is used to model and set up AWS resources using Infrastructure as Code (IaC).
   - **Incapability**: CloudFormation is not used for data migration or transfer tasks. For large data migrations, services like AWS DataSync or Snowball should be used.

---

### **Amazon S3 with NFS**
- **Capability**: Amazon S3 is designed for scalable object storage with features like data durability, lifecycle management, and cross-region replication.
- **Incapability**: S3 does not support NFS (Network File System) protocol natively. It is an object storage service, not a file system, and is unsuitable for applications requiring POSIX-compliant file system access like NFS.

---

### **Amazon Elastic Block Store (EBS)**
- **Capability**: Amazon EBS provides block-level storage volumes for use with EC2 instances. It supports multiple volume types like gp2 (General Purpose SSD), io1 (Provisioned IOPS SSD), and st1 (Throughput Optimized HDD).
- **Incapability**: EBS volumes, including Multi-Attach, are not optimized for shared file storage across multiple EC2 instances in different Availability Zones. For scalable, shared file access across zones, Amazon EFS (Elastic File System) is a better solution.

---

### **Amazon RDS**
- **Capability**: Amazon RDS provides managed relational databases with Multi-AZ for high availability and automated backups.
- **Incapability**: RDS does not allow the direct encryption of existing unencrypted instances. To encrypt an RDS database, users must create a snapshot of the unencrypted instance, create an encrypted copy of the snapshot, and restore a new instance from the encrypted snapshot.

---

### **Application Load Balancer (ALB)**
- **Capability**: The Application Load Balancer (ALB) operates at Layer 7 (HTTP/HTTPS) and is used to route and load balance web traffic.
- **Incapability**: ALB is not optimized for Layer 4 (TCP/UDP) traffic, making it unsuitable for applications like multiplayer games that require low-latency, high-throughput TCP/UDP connections. For Layer 4 traffic, the Network Load Balancer (NLB) is the appropriate choice.

---

### **IAM Policy**
- **Capability**: IAM policies manage access and permissions to AWS resources, ensuring that users and roles can access the necessary resources.
- **Incapability**: IAM policies are not designed to enforce password complexity or length requirements for IAM user passwords. These are enforced through an account-wide password policy, not through individual IAM policies.

---

### **Amazon CloudFront with Single Origin**
- **Capability**: Amazon CloudFront delivers content using a globally distributed network of edge locations, improving performance and reliability for static and dynamic content.
- **Incapability**: A single-origin CloudFront configuration does not provide high availability across multiple regions. To achieve redundancy, CloudFront should be configured with multiple origins, such as an origin group with failover.

---

### **Amazon RDS Read Replica (Encryption)**
- **Capability**: RDS Read Replicas provide read scaling by replicating data from the primary database instance to a read-only replica.
- **Incapability**: You cannot create an encrypted read replica from an unencrypted primary RDS instance. Encryption must be set up during snapshot creation, followed by restoring a new encrypted instance.

---

### **Amazon S3 Bucket Policies**
- **Capability**: S3 bucket policies control access to the objects within a bucket, managing permissions based on user roles, conditions, and actions.
- **Incapability**: Bucket policies alone do not protect data from accidental deletion. They manage who can perform actions on the bucket but do not provide data recovery or prevent authorized users from accidentally deleting objects.

---

### **Lifecycle Policies for S3**
- **Capability**: Lifecycle policies in Amazon S3 manage object transitions between storage classes and can automate the deletion of objects after a specific time.
- **Incapability**: Lifecycle policies do not prevent accidental deletions or enable recovery of deleted objects. They are intended for cost optimization and storage management, not for preventing unintended deletions.

---

### **AWS Config for Enforcing Password Policies**
- **Capability**: AWS Config allows monitoring and assessment of AWS resources against compliance rules, ensuring configurations adhere to policies.
- **Incapability**: AWS Config is not designed to enforce password complexity or length requirements for IAM users. This capability is handled by an account-wide password policy in IAM settings.

---

### **Amazon RDS with Multi-AZ for Encryption**
- **Capability**: Amazon RDS with Multi-AZ improves availability by automatically failing over to a standby instance in a different availability zone.
- **Incapability**: You cannot enable encryption on an existing unencrypted RDS instance by switching to Multi-AZ. Encryption can only be enabled during instance creation by restoring from an encrypted snapshot.

---

### **Service Name**: **Amazon EC2 Instance Store**

- **Capability**: Provides ephemeral (temporary) storage that can be used for caching or temporary data during an instance's lifecycle.
- **Incapability**: Cannot be used for persistent data storage. When the instance is stopped or terminated, the data is lost, making it unsuitable for workloads requiring persistent storage or long-term data retention.

---

### **Service Name**: **Amazon S3**

- **Capability**: Object storage service ideal for scalable, durable storage of files, including large-scale video files and archival storage (especially when combined with Glacier for long-term storage). Can host static websites at a very low cost.
- **Incapability**: S3 is not a file system like NFS and cannot be mounted directly using NFS commands. It is not suitable for block storage or databases that require POSIX compliance or low-latency, high-transactional access patterns.

---

### **Service Name**: **AWS Lambda**

- **Capability**: Ideal for event-driven, serverless compute scenarios where you need to handle sporadic traffic. It automatically scales from 0 to thousands of requests per second and is tightly integrated with API Gateway for building stateless APIs.
- **Incapability**: Not designed for workloads that need continuous compute power or that involve complex, long-running processes (better suited for EC2 or Fargate in such cases).

---

### **Service Name**: **Amazon RDS**

- **Capability**: Managed relational database service suitable for structured, relational workloads with automatic scaling, backup, and patching.
- **Incapability**: Not ideal for handling unstructured, key-value requests. It’s more suited for relational data models and is less scalable for non-relational workloads (better to use DynamoDB for key-value workloads).

---

### **Service Name**: **Amazon DynamoDB**

- **Capability**: Fully managed NoSQL database service designed for key-value requests and high-velocity workloads, with automatic scaling based on demand.
- **Incapability**: Not suited for relational data structures requiring complex joins or ACID transactional integrity at the same level as relational databases like RDS.

---

### **Service Name**: **AWS Fargate**

- **Capability**: A container service that allows you to run containers without managing servers, ideal for scenarios where containers are used in microservices architectures.
- **Incapability**: Less suitable for event-driven serverless scenarios like AWS Lambda. It requires consistent compute resources rather than sporadic, event-driven invocation.

---

### **Service Name**: **Amazon CloudFront**

- **Capability**: Content Delivery Network (CDN) service that caches content at Edge Locations to reduce latency and improve performance for users globally. Can handle both dynamic and static content with customizable routing policies, including failover.
- **Incapability**: CloudFront does not directly manage the origin content beyond caching it at edge locations. For example, CloudFront does not replace a backup website or origin management strategy; it serves cached content from an origin.

---

### **Service Name**: **Amazon Route 53**

- **Capability**: Scalable DNS web service that provides features like health checks, failover routing, and routing based on geolocation or latency, supporting high availability and disaster recovery scenarios.
- **Incapability**: Route 53 is not designed to serve website content directly (like S3 or EC2). It routes traffic but needs backing services to handle the actual content delivery.

---

### **Service Name**: **AWS Direct Connect**

- **Capability**: Provides a dedicated, high-throughput network connection between on-premises environments and AWS, reducing network latency and providing a secure, direct link to AWS resources.
- **Incapability**: Cannot be used for short-term, low-volume data transfers that don’t justify the cost of a dedicated link. It’s also less flexible than site-to-site VPN, which can use the public internet.

---

### **Service Name**: **AWS Storage Gateway (Volume Gateway)**

- **Capability**: Provides hybrid cloud storage, integrating on-premises environments with AWS storage services by presenting volumes that can be backed by S3, allowing local caching and storage tiering.
- **Incapability**: Not suitable for applications that need real-time, high-frequency I/O like low-latency databases. Also, it requires some changes in on-premises environments to use.

---

### **Service Name**: **AWS Storage Gateway (File Gateway)**

- **Capability**: Presents a network file system (NFS/SMB) interface to on-premises environments and caches frequently used data locally while storing it in S3 for long-term retention.
- **Incapability**: It doesn’t support applications requiring very high I/O or low-latency access to storage since S3-based storage inherently has higher latency compared to on-premises solutions.

---

### **Service Name**: **Amazon VPC Peering**

- **Capability**: Connects two VPCs, allowing traffic routing between them, useful for multi-region or multi-VPC architectures.
- **Incapability**: Cannot be used to connect on-premises networks to AWS VPCs (which requires services like Direct Connect or a VPN). VPC Peering only connects VPCs within AWS.

---

### **Service Name**: **AWS Snowball**

- **Capability**: Best suited for bulk data migration where physical storage devices are shipped between on-premises environments and AWS for high-volume transfers.
- **Incapability**: Not suitable for continuous or real-time data transfer. The process involves batch data collection and is therefore inefficient for ongoing, frequent data uploads.

---

### **Service Name**: **Amazon Global Accelerator**

- **Capability**: Provides global traffic routing with low latency by routing traffic through the AWS global network, useful for applications requiring very low latency globally.
- **Incapability**: Not designed for simple failover between primary and backup websites. It is overkill for basic failover scenarios, especially when cheaper solutions (like Route 53) suffice.

---

### **Service Name**: **Amazon EC2 Auto Scaling**

- **Capability**: Dynamically scales compute resources based on demand, ensuring applications have the necessary resources during high traffic periods.
- **Incapability**: Not ideal for event-driven, serverless applications where Lambda or Fargate would be more cost-efficient and easier to manage, as EC2 Auto Scaling still requires instance management.

---

### **1. AWS S3**
- **Capability**:
  - Can enable **MFA Delete** to prevent accidental deletions.
  - Can enable **versioning** to retain multiple versions of an object, ensuring data recovery.
- **Incapability**:
  - **IAM policies** control permissions but do not prevent accidental deletions or ensure versioning.
  - **Encryption (SSE-S3)** secures data at rest but does not protect against accidental deletions or provide versioning.
  - **Read-only permissions** limit the ability to upload and modify data, which would conflict with use cases requiring document modification.

---

### **2. Amazon Route 53**
- **Capability**:
  - Can provide **DNS-based routing** with failover policies for application availability.
- **Incapability**:
  - **Route 53 failover routing policy** does not offer static IP addresses or the lowest latency. It's slower than network-layer solutions like AWS Global Accelerator, which provides intelligent routing.

---

### **3. AWS Elastic File System (EFS)**
- **Capability**:
  - Can be mounted on multiple **EC2 instances** across Availability Zones, providing shared, resilient, and persistent file storage.
- **Incapability**:
  - **Amazon EBS** is tied to a specific Availability Zone and cannot be shared between multiple EC2 instances across zones, limiting resilience.
  - **Amazon S3 One Zone-IA** provides infrequent access storage, but it stores data in a single availability zone, which does not ensure resiliency in case of a zone failure.
  - **Instance Store** volumes are ephemeral (non-persistent), making them unsuitable for resilient, persistent storage.

---

### **4. Amazon RDS**
- **Capability**:
  - **SSL/TLS encryption in transit** is achieved by downloading AWS-provided root certificates and configuring database clients to use them.
  - For encryption of data at rest, **AWS KMS** is used to encrypt RDS snapshots and newly created instances.
- **Incapability**:
  - **KMS keys** are used for encryption at rest, not for enabling encryption in transit (SSL/TLS).
  - **Self-signed certificates** are unnecessary and not recommended when AWS provides trusted root certificates for encryption in transit.
  - **Encryption of an existing unencrypted RDS DB instance** is not possible directly; a snapshot needs to be taken and restored with encryption.

---

### **5. AWS Global Accelerator**
- **Capability**:
  - Provides **static IP addresses** and network-layer intelligent routing for low-latency and fast regional failover.
- **Incapability**:
  - **NLB with static IPs** does not offer the global intelligent routing provided by Global Accelerator.
  - **Route 53 failover routing** only provides DNS-level routing, which is slower and does not guarantee low latency.
  - **CloudFront** can route traffic globally but does not offer static IP addresses.

---

### **6. Amazon EC2 / EBS**
- **Capability**:
  - **Amazon EBS Provisioned IOPS SSD (io1/io2)** can scale up to 64,000 IOPS for a single volume, supporting high-performance database needs.
- **Incapability**:
  - **Amazon EBS gp2** (General Purpose SSD) maxes out at 16,000 IOPS per volume, which is insufficient for workloads requiring consistently high IOPS.
  - **Instance Store** volumes are ephemeral and are not suitable for databases requiring persistent storage.

---

### **7. Amazon RDS (Cross-Region Read Replicas)**
- **Capability**:
  - An unencrypted master DB can be encrypted by taking a **snapshot**, encrypting it, and restoring it to a new instance, then creating a cross-region encrypted Read Replica.
- **Incapability**:
  - **Enabling encryption on an existing unencrypted RDS instance** directly is not possible.
  - **KMS encryption** cannot be applied to an existing unencrypted Read Replica without first encrypting a snapshot.

---

### **8. AWS KMS**
- **Capability**:
  - **KMS** provides encryption for data at rest in services like Amazon RDS and S3.
- **Incapability**:
  - **KMS** cannot be used for encrypting data in transit (SSL/TLS), as encryption in transit requires SSL certificates, not KMS keys.

---




