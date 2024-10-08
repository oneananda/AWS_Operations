﻿# Amazon RDS Exam Assistance

- It is not possible to enable encryption directly on an existing unencrypted RDS instance. 

### Questions incorporating this logic:

Here are the questions based on the logic that encryption cannot be enabled directly on an existing unencrypted RDS instance, and additionaly what are the options availabe in case of such scenario arises,

### Question 1:

A company has an Amazon RDS MySQL instance that was launched without encryption. The company now wants to enable encryption for this RDS instance to meet compliance requirements. 

What should a solutions architect do to achieve this?

**Options:**
1. Enable encryption directly on the existing RDS instance.
2. Create a read replica of the existing RDS instance with encryption enabled, then promote the read replica to master. (Correct answer)
3. Modify the existing RDS instance to enable encryption using the RDS console.
4. Stop the RDS instance, take a snapshot, and enable encryption on the stopped instance.

### Explanation:

- **Option 1:**  
   **Encryption cannot be enabled directly** on an existing unencrypted RDS instance. You need to migrate the data to an encrypted instance.

- **Option 2 (Correct):**  
   The correct approach is to create an **encrypted read replica** of the unencrypted instance, then promote the read replica to master. This allows for enabling encryption indirectly without downtime.

- **Option 3:**  
   **Modifying the existing RDS instance** to enable encryption is not possible. RDS instances must be created with encryption at the time of launch.

- **Option 4:**  
   It’s not possible to **enable encryption on a stopped instance**. You must create a new encrypted instance or snapshot as part of the solution.

---

### Question 2:

A company has several Amazon RDS instances running without encryption. To comply with a new security policy, they need to enable encryption on these instances. 

Which of the following is the correct process to achieve this?

**Options:**
1. Take a snapshot of the unencrypted instance, copy the snapshot with encryption enabled, and restore the instance from the encrypted snapshot. (Correct answer)
2. Modify the existing RDS instance to enable encryption.
3. Restart the RDS instance and enable encryption during reboot.
4. Use an AWS Lambda function to enable encryption on the existing RDS instance.

### Explanation:

- **Option 1 (Correct):**  
   The correct process is to take a **snapshot of the unencrypted RDS instance**, then **copy the snapshot with encryption enabled**, and finally restore a new encrypted instance from the snapshot.

- **Option 2:**  
   **Modifying the RDS instance** directly to enable encryption is not possible once the instance has been created without encryption.

- **Option 3:**  
   **Rebooting** the instance will not provide the option to enable encryption. Encryption must be handled via a snapshot copy and restore process.

- **Option 4:**  
   **AWS Lambda** cannot be used to directly enable encryption on an existing unencrypted instance. It still requires the snapshot copy and restore process.

### RDS Proxy related questions

- RDS Proxy has a soft limit of 1,000 simultaneous connections from AWS Lambda.
- During scaling operations, RDS Proxy routes traffic to a standby instance to ensure continuous availability and minimize latency during the transition. This helps avoid downtime or high latency during the scaling of the primary database instance.

#### Question 1

You have a high-traffic application using an RDS MySQL database that is experiencing connection exhaustion issues. You decide to implement RDS Proxy. Which of the following benefits will help your application avoid these issues?

A. RDS Proxy provides connection pooling, which minimizes the number of open database connections by multiplexing multiple application connections onto a smaller number of database connections.
B. RDS Proxy performs automatic retries on failed queries, reducing the load on the database.
C. RDS Proxy distributes traffic evenly between multiple RDS instances, allowing for better performance in a high-traffic environment.
D. RDS Proxy automatically adds read replicas to handle more read traffic.

`Twist:` You need to select the most relevant and specific feature of RDS Proxy that directly addresses connection exhaustion.

Correct Answer: A.
RDS Proxy helps avoid connection exhaustion issues by providing connection pooling. It consolidates multiple client connections into fewer database connections, which reduces the chance of exhausting the maximum allowed database connections. This feature is particularly useful for high-traffic applications where many connections are being opened and closed frequently.

#### Question 2

After implementing RDS Proxy, your team noticed an improvement in performance for read-heavy workloads. However, your write-heavy workloads still seem to be struggling. What could be the reason?

A. RDS Proxy is optimized for read-heavy workloads and cannot manage write-heavy workloads efficiently.
B. The proxy is not configured with enough targets to handle the write load. ✔
C. Your RDS instance is under-provisioned for the current write operations.
D. Write queries are being incorrectly routed to read replicas by RDS Proxy.


Correct Answer: B.

RDS Proxy can manage both read and write workloads, but if it is not configured with enough targets, it could struggle with the write-heavy load. Adding more targets (such as RDS instances with sufficient write capacity) and ensuring your write operations are correctly routed will improve performance for write-heavy workloads.

