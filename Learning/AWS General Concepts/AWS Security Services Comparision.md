# Comparison table for AWS Shield, AWS Macie, AWS WAF, and a couple of additional AWS security services: AWS GuardDuty and AWS Inspector.

| Feature/Service   | AWS Shield                          | AWS Macie                          | AWS WAF                              | AWS GuardDuty                      | AWS Inspector                     |
|-------------------|-------------------------------------|-----------------------------------|-------------------------------------|------------------------------------|-----------------------------------|
| **Type**          | DDoS Protection                     | Data Security                     | Web Application Firewall            | Threat Detection                   | Vulnerability Management           |
| **Primary Use**   | Protects applications from DDoS attacks | Identifies and protects sensitive data | Protects web applications from common exploits | Monitors AWS accounts for threats  | Assesses security vulnerabilities  |
| **Key Features**  | - Automatic attack detection<br>- Real-time attack mitigation | - Data classification<br>- Sensitive data discovery | - Custom rules for traffic filtering<br>- Rate-based rules | - Continuous monitoring<br>- Threat intelligence | - Automated security assessments<br>- Continuous scanning |
| **Deployment**    | Easy integration with AWS services  | Easy setup with minimal configuration | Configurable through AWS Management Console | No deployment needed, just enable   | Requires installation of agents    |
| **Cost Model**    | Tiered pricing based on usage      | Pay-as-you-go based on data processed | Pay-as-you-go based on rules and requests | Pay-as-you-go based on events processed | Pay-as-you-go based on assessments |
| **Best For**      | Websites, applications needing DDoS protection | Compliance and data privacy needs | Protecting against web attacks and bots | Detecting unusual behavior and threats | Identifying vulnerabilities in instances and containers |
| **Integration**   | Integrates with AWS services like CloudFront, Route 53 | Integrates with S3, IAM | Works with CloudFront, API Gateway, and Application Load Balancer | Integrates with CloudTrail, VPC Flow Logs | Integrates with EC2 and ECR         |

### Additional Services:
1. **AWS Security Hub**
   - **Type**: Security Posture Management
   - **Primary Use**: Centralized view of security alerts and compliance status.
   - **Key Features**: Aggregates data from multiple AWS services, provides insights into security posture.

2. **AWS Config**
   - **Type**: Resource Configuration Monitoring
   - **Primary Use**: Tracks AWS resource configurations and changes.
   - **Key Features**: Continuous monitoring, compliance checking, resource change tracking.

3. **AWS IAM (Identity and Access Management)**
   - **Type**: Access Control
   - **Primary Use**: Manage user access and permissions to AWS services.
   - **Key Features**: Fine-grained access control, role-based access.


### Attack Types and related services  

| **Attack Type**            | **AWS Service**                  | **Capable of Thwarting** | **Not Capable of Thwarting** | **Most Preferred Service** |
|----------------------------|----------------------------------|--------------------------|------------------------------|----------------------------|
| **DDoS (Distributed Denial of Service)** | AWS Shield, AWS WAF, CloudFront | Yes, when using AWS Shield Advanced or WAF with rate limiting. | No, without proper configuration or if AWS Shield Standard is not sufficient for sophisticated attacks. | **AWS Shield Advanced** |
| **SQL Injection**          | AWS WAF                          | Yes, when WAF rules are configured to block SQL injection patterns. | No, if WAF is not configured or custom rules are not set up correctly. | **AWS WAF** |
| **Cross-Site Scripting (XSS)** | AWS WAF                          | Yes, when using rules to filter XSS patterns. | No, if custom WAF rules for XSS protection are not applied. | **AWS WAF** |
| **Data Exfiltration**      | AWS Macie, AWS GuardDuty         | Yes, can detect and alert on potential exfiltration events. | No, can't prevent exfiltration without encryption and access control. | **AWS Macie** |
| **Man-in-the-Middle (MITM)** | AWS VPN, TLS Encryption (CloudFront, API Gateway) | Yes, by enforcing secure communication with TLS. | No, if proper encryption is not enforced or if users bypass secure communication. | **TLS Encryption (CloudFront, API Gateway)** |
| **Malware/Ransomware**     | AWS Inspector, GuardDuty, Systems Manager | Yes, can identify vulnerabilities and detect suspicious activities. | No, does not provide direct antivirus protection. Requires endpoint security. | **AWS GuardDuty** |
| **Unauthorized Access (IAM Misconfiguration)** | AWS IAM, AWS Organizations, AWS Config, AWS CloudTrail | Yes, can manage permissions and monitor access logs. | No, if IAM roles, policies, and permissions are not correctly configured. | **AWS IAM** |
| **Brute Force Attacks**    | AWS WAF, AWS Cognito             | Yes, by using WAF rate limiting and Cognito's account protection features. | No, if rate limiting or CAPTCHA mechanisms are not set up. | **AWS Cognito** |
| **Phishing (User Account Takeover)** | AWS Cognito, AWS IAM MFA | Yes, when using multi-factor authentication and Cognito's advanced security features. | No, if MFA is not enforced, and phishing is external to the AWS environment. | **AWS Cognito** |
| **Data Leakage (S3 Bucket Exposure)** | AWS S3 Bucket Policies, AWS Config, AWS Macie | Yes, when access policies and monitoring are correctly configured. | No, if buckets are set to public or misconfigured. | **AWS Config** |
| **Cross-Site Request Forgery (CSRF)** | AWS WAF                          | Yes, can filter and block CSRF attacks if properly configured. | No, if application-level security measures (e.g., CSRF tokens) are not implemented. | **AWS WAF** |
| **Rogue APIs (Unsecured APIs)** | AWS API Gateway, AWS WAF          | Yes, by using API Gateway security features and WAF to block unauthorized access. | No, if APIs lack authentication, encryption, and throttling configurations. | **AWS API Gateway** |
| **Privilege Escalation**   | AWS IAM, AWS Organizations, AWS CloudTrail | Yes, by using least privilege principles and monitoring with CloudTrail. | No, if IAM roles and permissions are overly permissive or not monitored. | **AWS IAM** |

