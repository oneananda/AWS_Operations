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

### 4. **Target Tracking Scaling**
   - **Explanation:** Target tracking scaling is like setting a thermostat in your home—it works automatically to maintain the temperature you set, adjusting the heating or cooling as needed to keep the room comfortable.
   - **Example:** Imagine you want your office to stay at a constant temperature of 24°C. If it gets too warm, the AC kicks in, and if it gets too cold, the heater turns on, constantly adjusting to maintain that target. Similarly, in cloud computing, you might set your system to always keep CPU usage at 50%. The system will automatically add or remove servers to maintain that balance, scaling as needed without any manual intervention.

### 5. **Predictive Scaling**
   - **Explanation:** Predictive scaling uses machine learning to anticipate the future needs of your application and automatically provisions resources ahead of time, based on historical data.
   - **Example:** Think of it as preparing for a big event where you don't know the exact time people will arrive, but you've looked at past trends and can predict roughly when it will happen. For instance, if your traffic usually spikes at 8 PM every day, predictive scaling will automatically add more servers just before that time, ensuring your app is ready before the rush even begins.

### 6 **Dynamic Scaling**
   - **Explanation:** Dynamic scaling is a general term that refers to **auto-scaling based on real-time demand**, adjusting your application resources based on the current load. It can be combined with other policies like step scaling or target tracking scaling.
   - **Example:** Imagine you're managing a fleet of taxis in a city. As demand for rides increases, you send out more taxis, and as demand drops, you bring some back. In dynamic scaling, the system continuously monitors the current state and adjusts resources based on real-time needs.

### 7. **Manual Scaling**
   - **Explanation:** As the name suggests, manual scaling is when you manually adjust the number of instances or resources to meet current demand. This approach is often used when you want total control or have very specific needs that are hard to automate.
   - **Example:** It’s like managing a pop-up shop during a weekend fair. You decide to bring in extra staff only after seeing how busy it is, instead of relying on pre-set schedules or predictions. Similarly, you might manually increase the number of EC2 instances when you see a spike in traffic or reduce them during off-hours.


