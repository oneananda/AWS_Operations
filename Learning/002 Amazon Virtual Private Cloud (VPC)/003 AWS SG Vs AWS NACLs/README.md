# AWS Network Access Control Lists (NACLs) and Security Groups

## AWS NACLs vs. AWS Security Groups: What's the Difference?

| Feature                          | Security Groups                               | Network Access Control Lists (NACLs)           |
|----------------------------------|-----------------------------------------------|------------------------------------------------|
| **Statefulness**                 | Security Groups are **stateful**. They remember things like whether a request was allowed, so they automatically allow return traffic without us having to do anything extra. | NACLs are **stateless**, meaning they don't remember anything about previous requests. Each request is treated like it's the first one. |
| **Where They Work**              | Security Groups work at the **instance level** (or for other specific resources), so they control traffic for individual instances. | NACLs work at the **subnet level**, so they control traffic for all instances in a subnet. |
| **Inbound Rules**                | Security Groups check all their rules, and if any rule allows the traffic, it's allowed in. They don’t care about the order. | NACLs follow their rules in a specific order, starting from the lowest number. Once a match is found, that's it—no more rules are checked. |
| **Outbound Rules**               | Security Groups automatically allow return traffic if it was allowed in. So if someone connects in, their responses are allowed out without extra rules. | With NACLs, we need to set up rules for **both** inbound and outbound traffic. If we want traffic to go out, we have to explicitly allow it. |
| **Default Settings**             | The default Security Group blocks everything from coming in, but it allows everything to go out unless we say otherwise. | By default, the NACL that comes with our VPC allows everything in and out. But if we create a new NACL, it blocks everything until we set up rules. In summary, the default NACL will allow traffic by default, but the ones we create will block everything by default. |
| **How Rules Are Ordered**        | Security Groups don’t have rule numbers. They look at all the rules and use the most permissive one that applies. | NACLs have numbered rules, and they check them in order from lowest to highest. The first rule that matches gets applied. |
| **Logging and Monitoring**       | Security Groups can log changes through AWS CloudTrail, and we can monitor traffic with VPC Flow Logs. | NACLs don’t keep track of what they block or allow by default. We’ll need to set up something like VPC Flow Logs to see what’s happening. |
| **How They’re Assigned**         | Security Groups need to be assigned to specific instances or resources; they’re not automatically applied. | Every subnet in a VPC has to be associated with a NACL. If we don’t pick one, it’ll get the default NACL. |
| **Best Use Case**                | Security Groups are our go-to for securing individual instances. They’re perfect for managing who can connect to our servers and how. | NACLs are great for adding an extra layer of security at the subnet level, especially when we want to control traffic between different subnets. |
| **How They’re Managed**          | Security Groups are managed at the instance level or for specific AWS resources. | NACLs are managed at the subnet level in our VPC. |
| **How Rules Are Applied**        | Security Groups check all rules at once. If any rule allows the traffic, it’s allowed. | NACLs apply rules in a set order, and once a match is found, that rule is applied, and the rest are ignored. |
| **Return Traffic**               | Security Groups automatically allow return traffic for any inbound connections, so we don’t need to worry about it. | With NACLs, we need to create rules for both incoming and outgoing traffic separately. Return traffic won’t be allowed unless we set up a rule for it. |

## What AWS Security Groups and NACLs Have in Common?

| **Feature**                      | **Description**                                                                      |
|----------------------------------|--------------------------------------------------------------------------------------|
| **IP Address Filtering**         | Both Security Groups and NACLs can filter traffic based on specific IP address ranges (CIDR blocks). This helps us manage which IP addresses are allowed or denied access to our resources. |
| **Protocol Support**             | Both Security Groups and NACLs can handle traffic using protocols like TCP, UDP, ICMP, and others, giving us flexibility in managing network traffic. |
| **Allow/Deny Rules**             | Both can explicitly allow or deny traffic based on rules we set up, providing us with control over what traffic is permitted or blocked. |
| **VPC Integration**              | Both Security Groups and NACLs are integral to a Virtual Private Cloud (VPC) environment, playing a key role in securing our network within AWS. |
| **Monitoring with VPC Flow Logs**| Both can be monitored using VPC Flow Logs, allowing us to track the traffic that is allowed or denied by our rules, helping us maintain security and troubleshoot issues. |
| **Ease of Modification**         | We can modify both Security Groups and NACLs at any time, updating the rules as our security needs change. |
| **Network Layer Security**       | Both provide an important layer of network security within AWS, with Security Groups focusing on instance-level protection and NACLs focusing on subnet-level control. |
