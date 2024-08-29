# AWS Security Groups

This is acting as virtual firewall which controls inbound and outbound traffic for resources within a Virtual Private Cloud (VPC).

- `Security groups are stateful`, if you allow any inbound traffic, automatically the outbound is allowed, so we don't need to create a separate outbound rule.
-` Default Security Group`, when any new VPC is created AWS will automatically creates a default security group. This default Security Group allows all outbound traffic but restricts all inbound traffic except traffic from other instances associated with the same Security Group.
- `Security Group Associations`, Each EC2 instance can be associated with one or more Security Groups, and these groups collectively determine the traffic rules for the instance.
- `Dynamic Association`, We can change the Security Groups associated with an instance at any time, which allows for dynamic security adjustments without stopping the instance.
- `Allow-Only Rules`, Security Groups do not support deny rules, only allow rules. This means that any traffic not explicitly allowed by an inbound or outbound rule is implicitly denied.
- `No Priority in Rules`, All rules within a Security Group are evaluated collectively and have equal priority. Unlike traditional firewalls, there is no order of precedence for rules, so all the rules must be designed to complement each other.
- `AWS Resource Access`, Security Groups can reference other Security Groups even across different AWS accounts, allowing for more flexible and secure access management between resources owned by different accounts.
