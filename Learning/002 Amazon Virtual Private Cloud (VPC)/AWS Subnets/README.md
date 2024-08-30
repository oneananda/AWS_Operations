# AWS Subnets

### Definition

Imagine we have a big office building (which represents the cloud infrastructure). This building has many floors, rooms, and areas where different teams work. Now, not everyone should have access to every part of the building, right? Some areas might be restricted to certain teams or departments. That’s where subnets come in.

In AWS, subnets are like separate floors or sections in this big office. They help us divide the larger network (called a Virtual Private Cloud or VPC) into smaller, isolated segments. These segments can be used to organize different resources (like servers or databases) depending on their function, security requirements, or communication needs.

There are two main types of subnets:

1. **Public Subnets**: These are like the open areas of our office building, where anyone with proper authorization can enter. Resources placed here can be accessed directly from the internet (such as web servers).

2. **Private Subnets**: These are the restricted areas of the building that only specific people (or services) have access to. Resources placed here cannot be accessed directly from the internet (like databases), but they can communicate internally with other resources in the same building.

By using subnets, we help ensure that the right people (or systems) can reach the right areas, and we keep things more secure and organized.