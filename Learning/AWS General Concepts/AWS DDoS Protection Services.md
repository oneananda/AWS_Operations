# AWS DDoS Protection Services

Overview of AWS services that actively protect against SYN Flood attacks or divert requests to mitigate the impact of such attacks.

| AWS Service                  | Protection Type                                                                                     | Active Protection               | Divert Requests | Monitoring and Alerts |
|------------------------------|-----------------------------------------------------------------------------------------------------|----------------------------------|-----------------|-----------------------|
| AWS Shield Standard          | Automatic protection against common DDoS attacks, including SYN Floods                             | Yes                              | No              | No                    |
| AWS Shield Advanced          | Enhanced DDoS protection with detailed diagnostics and access to DRT                               | Yes                              | No              | Yes                   |
| AWS WAF                      | Custom rules for blocking or rate-limiting traffic, primarily focused on Layer 7                   | Partial (primarily Layer 7)      | No              | Yes                   |
| Elastic Load Balancing (ELB) | Distributes traffic across multiple targets to absorb impact                                       | Yes                              | No              | Limited               |
| AWS Global Accelerator       | Diverts traffic through AWS global network for improved availability and performance               | Yes                              | Yes             | Yes                   |
| Amazon CloudFront            | Caches content at edge locations and filters malicious requests                                    | Yes                              | Yes             | Yes                   |
| VPC Security Groups          | Blocks suspicious traffic at the VPC level                                                         | Partial                          | No              | No                    |
| Network ACLs                 | Adds an additional layer of protection by filtering traffic                                        | Partial                          | No              | No                    |
| AWS Firewall Manager         | Centrally manages firewall rules across AWS services for consistent protection                     | Yes                              | No              | Yes                   |
| AWS Route 53                 | Scalable DNS with built-in DDoS protection that diverts traffic                                    | Yes                              | Yes             | Limited               |

## Key Points

- **Active Protection**: Services that provide proactive measures to block or mitigate SYN Flood attacks.
- **Divert Requests**: Services that can divert or route traffic to reduce the impact of attacks on your resources.
- **Monitoring and Alerts**: Indicates whether the service offers monitoring and alert capabilities to track potential threats and respond accordingly.

