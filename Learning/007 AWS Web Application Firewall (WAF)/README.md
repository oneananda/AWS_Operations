# AWS Web Application Firewall (WAF)

`AWS WAF (Web Application Firewall)` is a security service from Amazon Web Services designed to safeguard the web applications. Think of it as a protective shield that keeps the website or API safe from common cyber threats like hackers trying to sneak in through vulnerabilities, slow down the site, or overwhelm it with unwanted traffic. AWS WAF watches over incoming web traffic, filtering out any suspicious or harmful requests before they can cause trouble, ensuring the application stays secure, available, and running smoothly.

AWS WAF helps defend against common threats like SQL injection, cross-site scripting (XSS), and other OWASP Top 10 security risks.

### Rules

- Customizable : WAF helps us to customize the rules.
- Predefined : Lot of predefined rules are available at our disposal.

### Integeration

WAF can be integrated to Amazon CloudFront (CDN), Application Load Balancer (ALB), and API Gateway.

### Features

- Rule Groups: Collections of predefined rules.
- Web ACLs (Access Control Lists): These are used to define which traffic is allowed or blocked.
- Bot Control: AWS WAF offers bot control.
- Rate-Based Rules: Protect against denial-of-service (DoS) attacks by limiting the rate of requests from a single IP address.

### How It Works

1. Request sent to the application.
2. AWS WAF checks it against the rules defined in your Web ACL. 
3. The rules can be allow, block.
4. If the rule matching a SQL Injection pattern, then it will block.

### Limitations

Only protects application layer; not effective for non-web or network-layer attacks.

**Not supportive examples:**

- DDoS Attacks at Layer 3/4
- Protocol Attacks: Attacks like SYN floods

### Twisted exam questions

- Questions may ask about its use for network-level attacks, which it doesn't handle.



