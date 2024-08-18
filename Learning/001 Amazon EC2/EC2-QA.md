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
Reserved Instances provide a significant discount compared to On-Demand pricing when you commit to using EC2 instances for a one- or three-year term. This option is ideal for stable workloads where you can predict the need for a certain amount of capacity over a long period. By choosing a three-year term, the company can maximize its cost savings.

