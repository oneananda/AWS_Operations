# Amazon EC2 Instance Health Checks

## Types of Health Checks availabe in Amazon EC2 Instance

### EC2 Instance Health Check

Amazon EC2 performs automatic health checks for every minute on Software and Hardware changes,

There are several sub-types of checks available

- System status checks
- Instance status checks
- We can configure custom health checks via Amazon Route 53 to monitor endpoints 
- Cutom health checks based on CloudWatch Agent Health Checks
- Application-Level Health Checks

**Auto Recovery:**	Automatically recovers the instance if a system status check fails.

**Health Status Indicators:** Status `OK` (all checks pass) or `Impaired` (one or more checks fail).


---

### Elastic Load Balancer (ELB) Health Check

---

### Auto scaling and custom Health Checks

---
