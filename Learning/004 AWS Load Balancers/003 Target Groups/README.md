# Target Group in AWS

A `target group in AWS` is a collection of resources (such as EC2 instances, containers, or IP addresses) that a load balancer directs incoming traffic to. Target groups allow you to define which instances or services the load balancer should route traffic to, and they play a crucial role in distributing and managing network traffic for applications.

**Target Types**:
   - **EC2 Instances**: These are individual Amazon EC2 instances that are part of your infrastructure.
   - **IP Addresses**: Allows specifying IP addresses as targets, which can be used for on-premises resources or external systems.
   - **Lambda Functions**: You can use Lambda functions as targets for specific event-driven serverless architectures.
   - **Application Container Instances**: In containerized environments (e.g., ECS), containers can be specified as targets.
