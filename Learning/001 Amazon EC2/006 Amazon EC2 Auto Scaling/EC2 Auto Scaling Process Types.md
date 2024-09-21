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


## Scaling Types

### 1. **Scheduled Scaling**
   - **Explanation:** Scheduled scaling works like setting an alarm for an event you know is going to happen. You decide beforehand when to add or remove capacity, based on predictable patterns in your application's usage.
   - **Example:** Think of it as preparing for guests during the festive season. If you know friends and family will visit at a specific time, you cook extra food and prepare the house beforehand. Similarly, for an online store, if you expect more traffic during sales like Black Friday or Diwali, you can schedule extra servers to be ready at a set time to handle the rush.

### 2. **Simple Scaling**
   - **Explanation:** Simple scaling is like reacting to a situation as soon as you notice something is wrong. It’s based on one condition that, when met, causes your application to scale up or down by a fixed amount.
   - **Example:** Imagine you're in a busy restaurant and you see a crowd forming. You immediately call in two more staff to help. Similarly, if your application’s CPU usage goes above 70%, you might scale up by adding two more servers to handle the load. But it’s a one-time reaction—once the scaling happens, there’s no further action until the next alarm is triggered.

### 3. **Step Scaling**
   - **Explanation:** Step scaling is more dynamic and responsive, like adjusting your actions depending on the size of the problem. It allows for scaling in gradual steps, adding or removing resources based on how severe the situation is.
   - **Example:** Let’s say you're running a catering business. If a small group arrives, you send one extra person to help. But if a huge group shows up, you send four people. Similarly, if your application is only slightly overloaded (say, 60% CPU usage), step scaling might add just one server. But if it’s severely overloaded (90% CPU usage), it adds five servers. The scaling happens in steps, depending on how much extra capacity is needed.
