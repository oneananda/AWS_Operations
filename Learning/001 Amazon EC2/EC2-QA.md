# EC2 Questions & Answers - QA

## Storage and Data Management

### What happens to the data on an EC2 instance store when the instance is stopped or terminated?

**Options:**
- A. The data is automatically backed up to Amazon S3.
- B. The data is persisted and available.
- C. The data is lost.
- D. The data is transferred to EBS.

**Answer: C**

**Explanation:**  
Data on ephemeral storage (instance store) **will be lost** when the instance is stopped or terminated. However, it will not be lost if the instance is simply restarted.

---

### What happens to the data on an EC2 instance store when the instance is restarted?

**Options:**
- A. The data is automatically backed up to Amazon S3.
- B. The data is persisted and available.
- C. The data is lost.
- D. The data is transferred to EBS.

**Answer: B**

**Explanation:**  
Data on ephemeral storage (instance store) **will not be lost** when the instance is restarted. However, it will be lost if the instance is stopped or terminated.

## Pricing Models

### Which Amazon EC2 pricing model offers the lowest cost for a workload that can tolerate interruptions?

**Options:**
- A) On-Demand Instances
- B) Reserved Instances
- C) Dedicated Hosts
- D) Spot Instances

**Answer: D) Spot Instances**

**Explanation:**  
Spot Instances allow you to bid for unused EC2 capacity at a significant discount compared to On-Demand pricing. However, these instances can be interrupted by AWS with short notice if the capacity is needed for other users. This makes Spot Instances the most cost-effective option for workloads that can handle interruptions.

**Use-cases for each**

- **On-Demand Instances** : `Ideal for short-term`, unpredictable workload timings and that cannot to be interuppted, Example : Development and testing environment
- **Reserved Instanses** : `Ideal for long-term and predictable workloads`, need to commit for 1 - 3 years, Example : Running a web application
- **Dedicated Hosts** : `Suitable for scenario where physical server isolation` for compliance, licencing and regulatory needs, Example : Running a licenced software which needs dedicated hardware
- **Spot Instances** : `Suitable for flexible, fault-tolerant and non important jobs` which can be interupted and ran later if it is interuppted, Example : Batch jobs, data-analysis or distributed workloads.

---

### A company wants to commit to using an EC2 instance for three years to receive the maximum discount. Which pricing model should they choose?

**Options:**
- A) On-Demand Instances
- B) Spot Instances
- C) Reserved Instances
- D) Savings Plans

**Answer: C) Reserved Instances**

**Explanation:**  
Reserved Instances provide a `significant discount compared to On-Demand pricing` when you commit to using EC2 instances for a one- or three-year term. This option is ideal for stable workloads where you can predict the need for a certain amount of capacity over a long period. By choosing a three-year term, the company can maximize its cost savings.

---

## Security and Networking

### Question 3: How can you control the traffic allowed to reach your EC2 instance?

**Options:**
- A) Using Amazon S3 bucket policies
- B) Using EC2 Security Groups
- C) Using IAM Roles
- D) Using AWS Shield

**Answer: B) Using EC2 Security Groups**

**Explanation:**  
Security Groups act as a `virtual firewall`, allowing you to control inbound and outbound traffic to your EC2 instances, ensuring that only authorized traffic can reach them.

---

### Question 4: What is the purpose of a Virtual Private Cloud (VPC) in relation to EC2 instances?

**Options:**
- A) To store EC2 instance data
- B) To monitor EC2 instance performance
- C) To isolate and secure EC2 instances within a virtual network
- D) To provide automatic backups for EC2 instances

**Answer: C) To isolate and secure EC2 instances within a virtual network**

**Explanation:**  
A VPC allows you to `define a logically isolated network` in the AWS cloud where you can launch EC2 instances, control their networking settings, and enhance security through subnetting, routing, and security groups.

---

## Scaling and Load Balancing

### Question 5: What is the primary purpose of an Auto Scaling Group in Amazon EC2?

**Options:**
- A) To automate the deployment of EC2 instances
- B) To distribute incoming traffic across multiple instances
- C) To automatically scale the number of EC2 instances up or down based on demand
- D) To provide continuous integration and continuous deployment (CI/CD) for EC2 instances

**Answer: C) To automatically scale the number of EC2 instances up or down based on demand**

**Explanation:**  
Auto Scaling Groups `adjust the number of running EC2 instances automatically` based on predefined criteria, ensuring that your application has the right amount of resources to handle traffic fluctuations efficiently.

---

### Question 6: Which AWS service is typically used in conjunction with EC2 to distribute incoming application traffic across multiple instances?

**Options:**
- A) AWS Lambda
- B) Amazon RDS
- C) Amazon CloudFront
- D) Elastic Load Balancing (ELB)

**Answer: D) Elastic Load Balancing (ELB)**

**Explanation:**  
Elastic Load Balancing `automatically distributes incoming application traffic` across multiple EC2 instances, enhancing availability and fault tolerance by ensuring that traffic is evenly spread and instances are not overwhelmed.

---
