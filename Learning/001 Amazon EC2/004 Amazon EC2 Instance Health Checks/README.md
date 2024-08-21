# Amazon EC2 Instance Health Checks

## Types of Health Checks availabe in Amazon EC2 Instance

### EC2 Instance Health Check

Amazon EC2 performs `automatic health checks for every minute` on Software and Hardware changes,

There are several sub-types of checks available

- System status checks : This is overall check for the `system where the instance is running`.
- Instance status checks : Instance status checks `monitor the software and network configuration` of your individual instance.
- We can configure custom health checks via Amazon Route 53 to monitor endpoints 
- Cutom health checks based on CloudWatch Agent Health Checks
- Application-Level Health Checks

**Enhanced Monitoring:** Provides detailed, `real-time metrics` for EC2 instances.

**Auto Recovery:**	`Automatically recovers` the instance if a system status check fails.

**Health Status Indicators:** Status `OK` (all checks pass) or `Impaired` (one or more checks fail).

**On Failure:** Configure to Trigger alarms, alert for manual intervention, or configure automated recovery options (e.g., reboot).

**Recovery Time:** Depends on the failure type, possibly AWS may need to intervene in such cases.

**Integration with Other Services:** Built into EC2, can trigger CloudWatch alarms, integrate with Route 53, Can trigger Auto Scaling based on instance health.

---

### Elastic Load Balancer (ELB) Health Check

---

### Auto scaling and custom Health Checks

---
