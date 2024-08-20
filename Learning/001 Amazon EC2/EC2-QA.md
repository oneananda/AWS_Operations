# EC2 Questions & Answers - QA

This repository provides a set of basic questions and answers about Amazon EC2, covering key topics such as storage, pricing models, security, networking, scaling, and load balancing.

## Storage and Data Management

### What happens to the data on an EC2 instance store when the instance is stopped or terminated?

**Options:**
- A. The data is automatically backed up to Amazon S3.
- B. The data is persisted and available.
- C. The data is lost.
- D. The data is transferred to EBS.

**Answer:** C

**Explanation:**  
Data on ephemeral storage (instance store) **will be lost** when the instance is stopped or terminated. However, it will not be lost if the instance is simply restarted.

---

### What happens to the data on an EC2 instance store when the instance is restarted?

**Options:**
- A. The data is automatically backed up to Amazon S3.
- B. The data is persisted and available.
- C. The data is lost.
- D. The data is transferred to EBS.

**Answer:** B

**Explanation:**  
Data on ephemeral storage (instance store) **will not be lost** when the instance is restarted. However, it will be lost if the instance is stopped or terminated.

---

### Can you attach multiple EBS volumes to a single EC2 instance?

**Options:**
- A) No, only one EBS volume can be attached.
- B) Yes, up to two EBS volumes can be attached.
- C) Yes, multiple EBS volumes can be attached.
- D) Yes, but only if they are in the same Availability Zone.

**Answer:** C

**Explanation:**  
You can attach multiple Amazon EBS (Elastic Block Store) volumes to a single EC2 instance, allowing you to scale storage and performance as needed. All attached volumes must be in the same Availability Zone as the instance.

---

### What is the difference between EBS-backed and instance store-backed AMIs?

**Options:**
- A) EBS-backed AMIs persist data when the instance is stopped, while instance store-backed AMIs do not.
- B) Instance store-backed AMIs provide automatic backups, while EBS-backed AMIs do not.
- C) EBS-backed AMIs can only be used with Spot Instances.
- D) There is no difference; both operate the same way.

**Answer:** A

**Explanation:**  
EBS-backed AMIs allow the data on the root volume to persist when the instance is stopped or terminated, while instance store-backed AMIs are ephemeral, meaning data is lost when the instance is stopped or terminated.

---

## Pricing Models

### Which Amazon EC2 pricing model offers the lowest cost for a workload that can tolerate interruptions?

**Options:**
- A) On-Demand Instances
- B) Reserved Instances
- C) Dedicated Hosts
- D) Spot Instances

**Answer:** D

**Explanation:**  
Spot Instances allow you to bid for unused EC2 capacity at a significant discount compared to On-Demand pricing. However, these instances can be interrupted by AWS with short notice if the capacity is needed for other users. This makes Spot Instances the most cost-effective option for workloads that can handle interruptions.

**Use-cases for each:**

- **On-Demand Instances:** `Ideal for short-term`, unpredictable workload timings that cannot be interrupted. Example: Development and testing environment.
- **Reserved Instances:** `Ideal for long-term and predictable workloads`. Requires a commitment for 1 - 3 years. Example: Running a web application.
- **Dedicated Hosts:** `Suitable for scenarios where physical server isolation` is needed for compliance, licensing, and regulatory needs. Example: Running licensed software that needs dedicated hardware.
- **Spot Instances:** `Suitable for flexible, fault-tolerant, and non-important jobs` that can be interrupted and resumed later. Example: Batch jobs, data analysis, or distributed workloads.

---

### A company wants to commit to using an EC2 instance for three years to receive the maximum discount. Which pricing model should they choose?

**Options:**
- A) On-Demand Instances
- B) Spot Instances
- C) Reserved Instances
- D) Savings Plans

**Answer:** C

**Explanation:**  
Reserved Instances provide a `significant discount compared to On-Demand pricing` when you commit to using EC2 instances for a one- or three-year term. This option is ideal for stable workloads where you can predict the need for a certain amount of capacity over a long period. By choosing a three-year term, the company can maximize its cost savings.

---

### How does auto scaling works with RI (Reserved Instances)

**Options:**
- A) Auto Scaling automatically uses Reserved Instances for any instances it launches.
- B) Reserved Instances apply only to instances that match the RI's specifications (instance type, availability zone, platform), and Auto Scaling will launch instances regardless of whether they match RIs.
- C) Auto Scaling cannot be used with Reserved Instances because RIs are fixed for 1 or 3 years
- D) Auto Scaling will adjust the Reserved Instances to cover the entire scaling group.

**Answer:** B

**Explanation:**  
The correct answer is B). Reserved Instances (RIs) provide cost savings for specific instance types, availability zones, and platforms over a 1 or 3-year commitment. Auto Scaling can launch additional instances as needed, but only those that match the RI specifications will benefit from the RI pricing. Instances that don't match are billed at On-Demand rates. Auto Scaling does not automatically prefer or adjust to RIs; it simply launches instances based on demand.

**Incorrect answers**
- A) Auto Scaling automatically uses Reserved Instances for any instances it launches.
**Incorrect:** Auto Scaling doesn't automatically use RIs for all instances. RIs only apply if the instances launched by Auto Scaling match the specific RI's type, availability zone, and platform.

- C) Auto Scaling cannot be used with Reserved Instances because RIs are fixed for 1 or 3 years.
**Incorrect:** Auto Scaling can still be used with RIs. The fixed term of RIs provides cost savings for specific instances, but Auto Scaling can scale beyond the reserved capacity, charging On-Demand rates for additional instances.

- D) Auto Scaling will adjust the Reserved Instances to cover the entire scaling group.
**Incorrect:** Auto Scaling doesn't adjust RIs. It simply launches instances as needed. Only instances that match the RI specifications benefit from the RI pricing; the rest are billed at On-Demand rates.

---

### Which pricing model allows you to pay a reduced rate for EC2 instances in exchange for committing to a specific amount of usage (measured in $/hour) for a one- or three-year term?

**Options:**
- A) On-Demand Instances
- B) Savings Plans
- C) Spot Instances
- D) Dedicated Hosts

**Answer:** B

**Explanation:**  
Savings Plans offer significant discounts compared to On-Demand pricing in exchange for a commitment to a consistent amount of usage over a one- or three-year term, providing flexibility across instance types and regions.

---

### How does AWS charge for EC2 instances running under the On-Demand pricing model?

**Options:**
- A) By the second
- B) By the hour or partial hour
- C) By the minute
- D) By the month

**Answer:** A

**Explanation:**  
AWS charges for On-Demand `EC2 instances by the second`, with a minimum of 60 seconds. This allows for more cost-efficient pricing as you only pay for what you use, down to the second.

**Clarification:**
One can ask question if the billing is based on seconds and why there is a rule of minumum 60 seconds, can it be called as per minute ?

- **Billing by the second:** AWS EC2 On-Demand instances are billed in increments of seconds, so after the first 60 seconds, you only pay for the exact time your instance runs.
- **Minimum of 60 seconds:** This means that even if you run an instance for only 30 seconds, you'll be billed for a full 60 seconds. After the first minute, the billing is done per second.

---

## Security and Networking

### How can you control the traffic allowed to reach your EC2 instance?

**Options:**
- A) Using Amazon S3 bucket policies
- B) Using EC2 Security Groups
- C) Using IAM Roles
- D) Using AWS Shield

**Answer:** B

**Explanation:**  
Security Groups act as a `virtual firewall`, allowing you to control inbound and outbound traffic to your EC2 instances, ensuring that only authorized traffic can reach them.

---

### What is the purpose of a Virtual Private Cloud (VPC) in relation to EC2 instances?

**Options:**
- A) To store EC2 instance data
- B) To monitor EC2 instance performance
- C) To isolate and secure EC2 instances within a virtual network
- D) To provide automatic backups for EC2 instances

**Answer:** C

**Explanation:**  
A VPC allows you to `define a logically isolated network` in the AWS cloud where you can launch EC2 instances, control their networking settings, and enhance security through subnetting, routing, and security groups.

---

### How does an Elastic IP address differ from a Public IP address for an EC2 instance?

**Options:**
- A) Elastic IPs are automatically assigned, while Public IPs are not.
- B) Elastic IPs are static and can be remapped, while Public IPs are dynamic and change when the instance is stopped or restarted.
- C) Public IPs are static, while Elastic IPs are dynamic.
- D) There is no difference; both operate the same way.

**Answer:** B

**Explanation:**  
An Elastic IP address is a `static, public IPv4 address` that can be associated with an EC2 instance. Unlike a standard Public IP address, which may change when an instance is stopped or restarted, an Elastic IP can be reassigned between instances, providing greater control and stability.

---

### What is the main purpose of using IAM roles with EC2 instances?

**Options:**
- A) To enhance the performance of EC2 instances
- B) To provide temporary access credentials for managing AWS resources
- C) To assign multiple IP addresses to an EC2 instance
- D) To monitor network traffic to and from EC2 instances

**Answer:** B

**Explanation:**  
IAM roles can be assigned to EC2 instances `to grant them temporary access credentials`, allowing them to interact with other AWS services securely without needing to store long-term credentials on the instance itself.

---

## Scaling and Load Balancing

### What is the primary purpose of an Auto Scaling Group in Amazon EC2?

**Options:**
- A) To automate the deployment of EC2 instances
- B) To distribute incoming traffic across multiple instances
- C) To automatically scale the number of EC2 instances up or down based on demand
- D) To provide continuous integration and continuous deployment (CI/CD) for EC2 instances

**Answer:** C

**Explanation:**  
Auto Scaling Groups `adjust the number of running EC2 instances automatically` based on predefined criteria, ensuring that your application has the right amount of resources to handle traffic fluctuations efficiently.

---

### Which AWS service is typically used in conjunction with EC2 to distribute incoming application traffic across multiple instances?

**Options:**
- A) AWS Lambda
- B) Amazon RDS
- C) Amazon CloudFront
- D) Elastic Load Balancing (ELB)

**Answer:** D

**Explanation:**  
Elastic Load Balancing `automatically distributes incoming application traffic` across multiple EC2 instances, enhancing availability and fault tolerance by ensuring that traffic is evenly spread and instances are not overwhelmed.

---

### What is the benefit of using an Elastic Load Balancer (ELB) with Auto Scaling?

**Options:**
- A) It reduces the need for IAM roles.
- B) It ensures that traffic is distributed evenly among all healthy instances in the Auto Scaling group.
- C) It automatically backs up data to Amazon S3.
- D) It decreases the billing charges for EC2 instances.

**Answer:** B

**Explanation:**  
Using an ELB with Auto Scaling `ensures that incoming traffic is balanced` across all healthy EC2 instances in the Auto Scaling group. This provides high availability and fault tolerance for your applications by ensuring no single instance is overwhelmed with too much traffic.

---

### What is the purpose of using Amazon EC2 Auto Scaling with a health check mechanism?

**Options:**
- A) To automatically scale the storage attached to EC2 instances
- B) To provide automatic backups of EC2 instances
- C) To automatically replace unhealthy instances to maintain application availability
- D) To automatically increase the number of available instance types

**Answer:** C

**Explanation:**  
Amazon EC2 Auto Scaling with a health `check mechanism can detect when an instance is unhealthy and automatically terminate` and replace it with a new, healthy instance. This ensures that your application remains available and resilient to failure.

---

## Networking

### Which type of IP address can be permanently associated with your EC2 instance, allowing it to retain the same public IP address even if you stop and start the instance?

**Options:**
- A) Public IP
- B) Elastic IP
- C) Private IP
- D) Dynamic IP

**Answer:** B

**Explanation:**  
An `Elastic IP address` is a static public IP address that can be associated with your EC2 instance, allowing it to retain the same IP address even if you stop and start the instance.

---

### How does Amazon EC2 provide enhanced network performance?

**Options:**
- A) By using Elastic Load Balancers
- B) By utilizing Amazon CloudFront
- C) Through the Elastic Network Adapter (ENA) and Elastic Fabric Adapter (EFA)
- D) By using Auto Scaling

**Answer:** C

**Explanation:**  
Amazon EC2 can provide enhanced network performance by utilizing the `Elastic Network Adapter (ENA)` and the `Elastic Fabric Adapter (EFA)`, which are designed to achieve high throughput and low latency.

---

