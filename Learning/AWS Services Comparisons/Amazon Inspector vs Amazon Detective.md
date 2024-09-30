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
