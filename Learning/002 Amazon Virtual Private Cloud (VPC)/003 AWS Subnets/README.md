# AWS Subnets

### Definition via analogy

Imagine we have a big office building (which represents the `cloud infrastructure`). This building has many floors, rooms, and areas where different teams work. Now, `not everyone should have access to every part of the building`, right? Some areas might be restricted to certain teams or departments. That’s where subnets come in.

In AWS, subnets are like separate floors or sections in this big office. They help us divide the larger network (called a Virtual Private Cloud or VPC) into smaller, isolated segments. These segments can be used to organize different resources (like servers or databases) depending on their function, security requirements, or communication needs.

There are two main types of subnets:

1. **Public Subnets**: These are like the open areas of our office building, where anyone with proper authorization can enter. Resources placed here can be accessed directly from the internet (such as web servers).

2. **Private Subnets**: These are the restricted areas of the building that only specific people (or services) have access to. Resources placed here cannot be accessed directly from the internet (like databases), but they can communicate internally with other resources in the same building.

By using subnets, we help ensure that the right people (or systems) can reach the right areas, and we keep things more secure and organized.

### Configuring Subnets

When it comes to configuring and maintaining AWS subnets, think of it as managing different sections of our office building to ensure they’re set up correctly and kept running smoothly. Here’s how we can approach it:

`Creating a VPC:` First, we need to define our big office building—this is our Virtual Private Cloud (VPC). We decide on the overall network address range, like setting the boundaries of the building.

`Dividing the VPC into Subnets:` Once our VPC is ready, we can start dividing it into subnets, like creating different floors or sections. Each subnet is assigned a range of IP addresses, which determines the number of devices (like servers) that can be placed in that subnet. We also decide if a subnet will be public or private based on whether the resources need internet access.

`Routing Tables:` Just as we need to decide which hallways and elevators connect different floors and rooms in our building, we need to configure routing tables. These define how data moves between subnets and the internet. Public subnets will have routes to an internet gateway, allowing external access, while private subnets will route traffic through a NAT gateway or other services to securely connect to the internet.

`Security Groups and Network ACLs:` To maintain security in different sections, we set up rules for who can enter or leave each area. Security groups are like security badges for individual resources, and Network Access Control Lists (NACLs) act as the security guard at each subnet's entrance, controlling inbound and outbound traffic.