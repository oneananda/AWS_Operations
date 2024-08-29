# Differences Between AWS Network Access Control Lists (NACLs) and Security Groups

| Feature                          | Network Access Control Lists (NACLs)           | Security Groups                               |
|----------------------------------|------------------------------------------------|-----------------------------------------------|
| **Statefulness**                 | Stateless: Does not track connection states.   | Stateful: Automatically allows return traffic.|
| **Level of Operation**           | Operates at the subnet level.                  | Operates at the instance level (or other resources). |
| **Inbound Rules**                | Evaluated in order based on rule number.       | All rules are evaluated; the most permissive rule applies. |
| **Outbound Rules**               | Requires explicit rules for outbound traffic.  | Automatically allows outbound traffic for inbound connections unless explicitly denied. |
| **Default Behavior**             | Default NACL allows all inbound and outbound traffic. Custom NACLs deny all by default. | By default, allows no inbound traffic and all outbound traffic. |
| **Rule Numbering**               | Rules are numbered, and evaluated in order from lowest to highest. | No numbering; all rules are evaluated. |
| **Logging and Monitoring**       | Does not natively log traffic.                 | Integrated with AWS CloudTrail for logging of configuration changes; can use VPC Flow Logs for monitoring. |
| **Support for IP Ranges (CIDR)** | Can filter traffic based on IP ranges (CIDR blocks). | Can filter traffic based on IP ranges (CIDR blocks). |
| **Protocol Support**             | Supports TCP, UDP, ICMP, and other IP protocols. | Supports TCP, UDP, ICMP, and other IP protocols. |
| **Default Association**          | Automatically associated with all subnets if not explicitly set. | Must be explicitly associated with instances. |
| **Use Case**                     | Additional layer of security at the subnet level. Ideal for controlling traffic between subnets. | Primary layer of security at the instance level. Ideal for controlling traffic to and from individual instances. |
| **Management**                   | Managed at the subnet level in the VPC.        | Managed at the instance or resource level. |
| **Rule Evaluation**              | Rules are evaluated in a sequential order, and the first match determines the action. | All rules are evaluated together, and if one rule allows traffic, it is permitted. |
| **Return Traffic**               | Requires explicit rules to allow return traffic. | Automatically allows return traffic for inbound connections. |

