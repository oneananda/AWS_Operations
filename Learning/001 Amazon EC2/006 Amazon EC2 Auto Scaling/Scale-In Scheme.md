# ASG Scale-In Scheme

### Step-by-Step Priority:

1. **Maintain Availability Zone Balance**:
   - **Priority 1**: Auto Scaling checks whether there is an imbalance of instances across Availability Zones (AZ).
   - If one AZ has more instances than others, the system selects the **Availability Zone** with the most instances.
   - If the instances are evenly distributed, Auto Scaling selects any AZ.

2. **Oldest Launch Template/Configuration**:
   - **Priority 2**: Within the selected Availability Zone, Auto Scaling identifies the instances based on their **launch template or configuration**.
   - Instances using the **oldest launch template/configuration** are prioritized for termination. This step ensures that newer or updated instances remain running.

3. **Longest Running Instances**:
   - **Priority 3**: If multiple instances have the same launch template/configuration, Auto Scaling selects the **instance that has been running the longest** for termination.

4. **Terminate the Selected Instance**:
   - **Priority 4**: Once an instance is selected, it will be terminated.
   - If **Connection Draining (Deregistration Delay)** is enabled on the load balancer, the selected instance is given time to finish handling active requests before termination.
   - Otherwise, the instance is immediately terminated.

Here’s a visual breakdown in simple steps:

| **Step** | **Termination Criteria**               | **Priority** |
|:--------:|:---------------------------------------|:------------:|
| **1**    | Check if the AZ has more instances      | 1            |
| **2**    | Select instances with the oldest launch template/configuration | 2            |
| **3**    | Select the instance running for the longest time | 3            |
| **4**    | Apply connection draining (if enabled)  | 4            |
| **5**    | Terminate the instance                  | 5            |


## Question 1

When the follwing will happen ?

"The instance will be randomly selected by the Auto Scaling group"

In the default termination policy of an Auto Scaling group, **random selection of an instance** does not typically occur. However, random selection could happen in the following situations:

1. **Custom Termination Policy**: If you configure a custom termination policy that explicitly defines random selection, Auto Scaling can terminate instances randomly. This is **not part of the default behavior**.

2. **Tie-Breaking**: Although rare, random selection may occur as a tie-breaker if:
   - Instances across Availability Zones are perfectly balanced.
   - All instances have the same launch template/configuration.
   - All instances have been running for exactly the same amount of time.

   In such cases, since no clear instance can be prioritized for termination, Auto Scaling might randomly select one instance for termination.

3. **No Specific Termination Policy Defined**: If you manually modify or simplify the termination policy (e.g., turning off the default behavior), the system might fall back to a simple selection method, including random selection, though this would require custom configurations.

