# AWS Terminologies

### **SSL Termination**
This is a process of decrypting the SSL (Secure Sockets Layer) or TLS (Transport Layer Security) data before sending the data to the application layer.

This is typically done to offload the decryption process from the backend servers, improving performance.

---

### **Sticky Sessions**
A user’s requests are always routed to the same server during their session.

This is useful when the application stores session data on the server, such as in-memory caches, and it’s crucial that the user consistently interacts with the same server to maintain their session state.

---

### **CPU Burst**
For AWS Lambda, sometimes the function needs to do more processing than it typically can handle. CPU burst capability helps accommodate such situations temporarily.

---

### **End-to-End Encryption (E2E)** 
E2E encryption ensures that data remains encrypted from the client's browser to the backend application server. This prevents any intermediary, including load balancers, from reading the data, fully preserving data confidentiality.

> **Note:** SSL Termination is directly proportional to E2E Encryption.

---

### **Cross-Zone Load Balancing**
Application Load Balancer (ALB) has cross-zone load balancing enabled by default, allowing it to distribute incoming traffic evenly across all registered targets in different Availability Zones.

---

### **Elastic IP Address (EIP)**
An Elastic IP address is a static, public IPv4 address that you can allocate to your AWS account. You can associate an Elastic IP with an EC2 instance.

---

### **Bastion Server**
A bastion server, also known as a jump box, is used to connect to private resources from an external system. 

This can be done via **SSH** or **RDP**.

---

### **SSH (Secure Shell)**
SSH is a secure protocol used to safely connect to and control a server or computer remotely over the internet. 

It provides a private, encrypted tunnel for secure communication, allowing users to send commands, transfer files, or manage systems without the risk of interception by unauthorized entities.

---

### **RDP (Remote Desktop Protocol)**
Similar to SSH, RDP allows users to securely connect to remote servers or computers. It is typically used for Windows systems to provide a graphical interface for managing remote systems.

---


### **Elastic Load Balancer (ELB)**
An Elastic Load Balancer automatically distributes incoming application or network traffic across multiple targets, such as EC2 instances, containers, and IP addresses, in one or more Availability Zones. It ensures high availability, fault tolerance, and scalability of your applications.

---

### **Auto Scaling Group (ASG)**
An Auto Scaling Group allows you to automatically adjust the number of EC2 instances in response to changes in demand. It ensures that you have the right number of instances to handle the load while optimizing costs.

---

### **Amazon S3 (Simple Storage Service)**
Amazon S3 is an object storage service that provides scalability, data availability, security, and performance. It allows you to store and retrieve any amount of data, at any time, from anywhere.

---

### **Amazon VPC (Virtual Private Cloud)**
A Virtual Private Cloud allows you to provision a logically isolated section of the AWS Cloud where you can launch AWS resources in a virtual network. You have control over IP address ranges, subnets, route tables, and gateways.

---

### **CloudFormation**
AWS CloudFormation is a service that helps you model and set up your AWS resources using templates. It automates the process of creating and managing resources, ensuring consistency across your environment.

---

### **IAM (Identity and Access Management)**
IAM allows you to securely manage access to AWS services and resources. You can create users, groups, and roles, and assign specific permissions to control who can access what.

---

### **AWS Lambda**
AWS Lambda is a serverless computing service that lets you run code without provisioning or managing servers. You pay only for the compute time you consume.

---

### **EBS (Elastic Block Store)**
Elastic Block Store provides persistent block storage for use with EC2 instances. It is designed for workloads that require regular updates or access to storage at the block level.

---

### **Route 53**
Route 53 is a scalable and highly available Domain Name System (DNS) web service. It translates human-readable domain names into IP addresses that computers use to connect to each other.

---

### **Security Groups**
Security groups act as virtual firewalls for your EC2 instances. They control inbound and outbound traffic to your instances.

---