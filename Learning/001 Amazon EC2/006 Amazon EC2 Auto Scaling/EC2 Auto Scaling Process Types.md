# EC2 Auto Scaling Process Types

We have 2 primary process types
- Launch Instance
- Terminate Instance

### Other process types

## Suspending and Resuming Scaling Processes in Amazon EC2 Auto Scaling

Amazon EC2 Auto Scaling primarily handles three core actions: launching, expanding, and terminating EC2 instances. Here's a breakdown of how these processes work and how you can manage them:

## Launch Processes

These processes are all about getting new instances up and running:

- **AddToLoadBalancer:** When a new instance is launched, this process ensures that it gets added to the connected load balancer or target group, helping distribute traffic efficiently.

## Expand Processes

These processes keep your scaling group balanced and responsive:

- **AZRebalance:** Ensures that your instances are evenly distributed across all specified Availability Zones, maintaining balance whenever the group becomes uneven.
  
- **ScheduledActions:** Allows you to perform scaling actions on a set schedule. You can set this up manually or let predictive scaling handle it for you based on usage patterns.

- **AlarmNotification:** Handles notifications from CloudWatch alarms tied to your scaling policies, helping you react quickly to changes in your environment.

## Terminate Processes

These processes focus on managing the instances that need to be removed:

- **HealthCheck:** Continuously monitors the health of your instances. If Amazon EC2 or AWS Elastic Load Balancing marks an instance as unhealthy, this process will take note and ensure it gets the attention it needs.
  
- **ReplaceUnhealthy:** Automatically terminates any instances marked as unhealthy and launches new ones to keep your application running smoothly.

## Managing Scaling Processes

You have the flexibility to suspend or resume any of these processes if needed, especially when you're troubleshooting or when you want to avoid any unexpected changes impacting your system's performance. Just keep in mind that if you suspend a primary process, it might affect the functionality of related scaling features.
