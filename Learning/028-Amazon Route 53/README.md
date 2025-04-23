# What Is Amazon Route 53?  

Amazon Route 53 is a highly available and scalable cloud Domain Name System (DNS) web service offered by Amazon Web Services (AWS). It translates human-readable domain names (like `example.com`) into IP addresses (such as `192.0.2.1`), ensuring users are routed reliably to your applications—whether they’re hosted on AWS or elsewhere. Additionally, Route 53 offers domain name registration and health-checking capabilities to monitor and manage your internet resources all in one service citeturn0search1turn0search10.

---

## Core Components and Features  
- **DNS Service**: Public and private DNS zones for managing how domain names resolve to your endpoints.  
- **Domain Registration**: Purchase, transfer, and manage top-level domains (TLDs) directly through the Route 53 console or APIs.  
- **Health Checks & Monitoring**: Automated health checks that verify endpoint availability and trigger DNS failover if an endpoint becomes unhealthy.  
- **Route 53 Resolver**: Provides recursive DNS services within Amazon VPCs, with optional DNS firewall rules to block malicious domains.  
- **Alias Records**: A proprietary virtual record type that lets you map apex (root) domains to AWS resources (like Elastic Load Balancers or CloudFront distributions) without needing CNAMEs citeturn0search9turn0search1.

---
