# Amazon Virtual Private Cloud (VPC)

Virtual Private Cloud (VPC) is a virtual network which we can logically isolate the networks, using VPC we can have a full control over the network,

Additionaly we can do 
- Selection of own IP address range
- Creation of subnets
- Configuration of route tables
- Configuration of network gateways.

## Key Features of Amazon VPC

### **Isolation and Security:**

- Logical Isolation: Each VPC is logically isolated from other VPCs within AWS, ensuring that resources within a VPC are secure from unauthorized access.
- Security Groups: Acts as a virtual firewall for controlling inbound and outbound traffic to your instances.
- Network Access Control Lists (NACLs): An additional layer of security that controls traffic at the subnet level.
- VPC Peering: Allows direct connectivity between two VPCs, either in the same or different AWS accounts, without using an Internet gateway or VPN connection.
