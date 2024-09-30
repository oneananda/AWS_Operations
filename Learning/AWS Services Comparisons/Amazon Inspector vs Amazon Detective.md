# Amazon Inspector vs Amazon Detective

**Amazon Inspector** and **Amazon Detective** are both AWS security services, but they serve different purposes related to securing AWS environments. Here’s a breakdown of their differences:

### **Comparison Summary**
| Aspect                   | **Amazon Inspector**                                 | **Amazon Detective**                               |
|--------------------------|------------------------------------------------------|---------------------------------------------------|
| **Main Focus**           | Identifying and assessing security vulnerabilities   | Investigating and analyzing security incidents     |
| **Functionality**        | Scans EC2 instances and ECR for vulnerabilities, checks compliance | Aggregates and analyzes log data to visualize and investigate incidents |
| **Use Cases**            | Vulnerability scanning, compliance checks            | Root cause analysis, security incident investigation |
| **Data Sources**         | EC2 instances, ECR images                            | VPC Flow Logs, CloudTrail logs, GuardDuty findings |
| **Output**               | Findings with remediation recommendations            | Visualizations, relationships, and insights for analysis |
| **Automation**           | Automated, continuous security assessments           | Automated data collection, with interactive investigation tools |

### **In Summary**:
- **Amazon Inspector** is primarily for **proactive security**; it scans and identifies vulnerabilities and compliance issues in your AWS resources (EC2, ECR). It provides findings and suggests remediation actions to help maintain a secure environment.
- **Amazon Detective** is used for **reactive investigation** of security incidents. It helps security analysts dig deeper into events flagged by other services (e.g., GuardDuty) to understand the incident's scope, root cause, and impact using data analytics and visualizations.

Use **Amazon Inspector** for continuous vulnerability scanning and compliance checks, and **Amazon Detective** when you need to investigate and analyze the cause and context of a security incident.

