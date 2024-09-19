# Amazon EBS Exam Assistance

- EBS volumes are tied to a specific Availability Zone and cannot be shared between instances in different zones. 

### Questions incorporating this logic:

**Question: 1**

A company is running a critical application on Amazon EC2 instances across multiple Availability Zones (AZs) in a region. The company needs to store data persistently and make it available across all instances, but they are currently using Amazon EBS volumes for data storage. However, they have observed that data is not accessible from instances in other AZs.

What should a solutions architect recommend to meet this requirement?

**Options:**
1. Use Amazon S3 for storing data and access it from all instances in different AZs.
2. Create additional EBS volumes in each Availability Zone and replicate data manually across the volumes.
3. Use Amazon EFS (Elastic File System) to store and share data across multiple Availability Zones. (Correct answer)
4. Attach the EBS volume to an EC2 instance in another Availability Zone to share data across all instances.

### Explanation:

- **Option 1:**  
   While **Amazon S3** is a good solution for storing data accessible across AZs, it is primarily used for object storage rather than block storage, which may not be suitable for applications requiring persistent, shared file storage across EC2 instances.

- **Option 2:**  
   Manually replicating data across **EBS volumes** in different AZs is possible, but it is inefficient and requires complex management. **EBS volumes are tied to a specific Availability Zone** and cannot be shared directly between instances in different AZs.

- **Option 3 (Correct):**  
   **Amazon EFS (Elastic File System)** is designed for sharing files across instances and Availability Zones. It allows data to be accessible from all EC2 instances in different AZs without manual replication, providing a highly available and scalable solution.

- **Option 4:**  
   **EBS volumes cannot be attached** to EC2 instances in different Availability Zones, so this option is not possible.

---

**Question: 2**

A company runs a web application on Amazon EC2 instances spread across multiple Availability Zones for high availability. They store application logs on Amazon EBS volumes attached to each instance. The company wants to consolidate these logs from all instances into a central location accessible by all instances, regardless of the Availability Zone.

What should a solutions architect recommend?

**Options:**
1. Create a snapshot of the EBS volume and share it between EC2 instances in all Availability Zones.
2. Store the logs in Amazon S3, and configure EC2 instances to write logs to S3 for centralized storage. (Correct answer)
3. Attach the EBS volumes to instances in other Availability Zones to share the logs.
4. Use Amazon RDS to store the logs and allow all EC2 instances to access the logs from there.

### Explanation:

- **Option 1:**  
   **Amazon EBS snapshots** can be created and shared across instances, but they are not suitable for real-time log sharing. Snapshots are a point-in-time backup and don’t provide continuous data sharing across Availability Zones.

- **Option 2 (Correct):**  
   **Amazon S3** is a scalable object storage service that allows data to be accessed from any EC2 instance, regardless of its Availability Zone. This makes S3 a great solution for storing logs centrally, enabling easy access from all instances across different AZs.

- **Option 3:**  
   **EBS volumes are tied to a specific Availability Zone** and cannot be directly attached to EC2 instances in other AZs. Therefore, you cannot share the same EBS volume across multiple instances in different AZs.

- **Option 4:**  
   **Amazon RDS** is designed for relational databases, not for storing unstructured data like logs. It is not the best solution for centralizing logs.

---
