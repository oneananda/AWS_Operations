# AWS Rate Limiting

AWS provides several security services and features that support `rate limiting` to help protect the applications from abuse, DDoS attacks, and other excessive usage patterns.

### List of AWS services that support rate limiting

| AWS Service                 | Rate Limiting Support | Type of Support      | Additional Details                                                                                             |
|-----------------------------|-----------------------|----------------------|-----------------------------------------------------------------------------------------------------------------|
| **AWS WAF**                 | Direct                | Rate-based rules     | Allows you to create rate-based rules to block requests exceeding a set threshold from a single IP over time.   |
| **Amazon API Gateway**      | Direct                | Usage plans, quotas  | Supports rate limiting and throttling through usage plans, enabling control over request rates and quotas.      |
| **Amazon CloudFront**       | Indirect              | WAF integration      | Works with AWS WAF to apply rate-based rules at the edge; no direct rate limiting capabilities in CloudFront.   |
| **AWS App Mesh**            | Indirect              | Service-to-service   | Uses retries, timeouts, and circuit breaker settings to indirectly manage request rates between services.       |
| **AWS Lambda**              | Indirect              | Concurrency controls | Concurrency controls (reserved concurrency) can limit the number of concurrent executions as a rate control.    |
| **Amazon Elastic Load Balancer (ELB)** | Indirect  | WAF/Other services   | No native rate limiting; can work with AWS WAF or upstream services like API Gateway for rate limiting.         |
| **Amazon Route 53**         | Not Supported         | N/A                  | No rate limiting capabilities; primarily a DNS and routing service.                                             |
| **AWS Shield**              | Not Supported         | N/A                  | Focused on DDoS protection, not on request rate limiting; works with WAF for some rate-based protections.       |
| **Amazon S3**               | Not Supported         | N/A                  | Provides bucket policies and ACLs but no rate limiting for object access.                                       |
| **AWS Security Groups**     | Not Supported         | N/A                  | Used for controlling inbound and outbound traffic but does not support rate limiting.                           |

### Key Points:
- **Direct Support:** Services like AWS WAF and Amazon API Gateway offer built-in, configurable rate limiting.
- **Indirect Support:** Services like CloudFront, App Mesh, and Lambda can achieve rate limiting through integrations or configuration adjustments.
- **Not Supported:** Some AWS services, such as Route 53 and S3, do not have native rate limiting capabilities but can be protected indirectly using other AWS security tools.

