# AWS NAT Gateway

This is used to provide the internet access to resources in private Subnets, such as EC2 instances.

NAT Gateway is a managed service provided by AWS that allows instances in a private subnet to connect to the internet or other AWS services while preventing the internet from initiating a connection with those instances.

NAT Gateway is

- Fully managed
- High Availablity (HA)
- Auto Scablable
- High performant
- Secure by preventing inbound connections

**Limitations of AWS NAT Gateway:**

- Cannot be used as a bastion server for SSH connections. (This is due to the restriction of inbound connections)
- Static IP addresses are assigned by AWS, and Elastic IP addresses can be associated.
