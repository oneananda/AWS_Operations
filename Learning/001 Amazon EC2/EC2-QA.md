# EC2 Questions & Answers - QA

## Storage and Data Management

### Question 1: What happens to the data on an EC2 instance store when the instance is stopped or terminated?

**Options:**
- A. The data is automatically backed up to Amazon S3.
- B. The data is persisted and available.
- C. The data is lost.
- D. The data is transferred to EBS.

**Answer: C**

Data on ephemeral storage (instance store) **will be lost** when the instance is stopped or terminated. However, it will not be lost if the instance is simply restarted.

---

### Question 2: What happens to the data on an EC2 instance store when the instance is restarted?

**Options:**
- A. The data is automatically backed up to Amazon S3.
- B. The data is persisted and available.
- C. The data is lost.
- D. The data is transferred to EBS.

**Answer: B**

Data on ephemeral storage (instance store) **will not be lost** when the instance is restarted. However, it will be lost if the instance is stopped or terminated.
