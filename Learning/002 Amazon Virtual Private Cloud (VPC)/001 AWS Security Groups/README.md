# AWS Security Groups

This is acting as virtual firewall which controls inbound and outbound traffic for resources within a Virtual Private Cloud (VPC).

- `Security groups are stateful`, if you allow any inbound traffic, automatically the outbound is allowed, so we don't need to create a separate outbound rule.
-` Default Security Group`, when any new VPC is created AWS will automatically creates a default security group. This default Security Group allows all outbound traffic but restricts all inbound traffic except traffic from other instances associated with the same Security Group.
- `Security Group Associations`, Each EC2 instance can be associated with one or more Security Groups, and these groups collectively determine the traffic rules for the instance.
- `Dynamic Association`, We can change the Security Groups associated with an instance at any time, which allows for dynamic security adjustments without stopping the instance.
