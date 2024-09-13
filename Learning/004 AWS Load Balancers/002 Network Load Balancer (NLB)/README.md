# Network Load Balancer (NLB)

As the name suggests, NLBs make sure that it will balance the incoming network load evenly (or as per the configuration) distributing.

Suppose you have a web application that needs to handle a high volume of incoming traffic. You have three EC2 instances running the application, and you want to ensure that the traffic is balanced across these instances for better performance and reliability.

### How It Works:

- When a user makes a request to the application (e.g., accessing http://myapp.com), the DNS resolves the domain name to the NLB’s static IP addresses.
- The NLB listens on the configured port (e.g., port 80) and distributes incoming traffic to the EC2 instances registered in the target group.
- The NLB uses the round-robin method (or other algorithms if configured) to balance the requests evenly across the healthy instances.
- If one of the instances becomes unhealthy (fails the health checks), the NLB stops sending traffic to that instance until it recovers.

### Diagram depicting
                      +------------------------+
                      |   Network Load Balancer |
                      +-----------+------------+
                                  |
                 +----------------+----------------+
                 |                |                |
         +-------+------+ +-------+------+ +-------+------+
         |   EC2 Instance 1   | |   EC2 Instance 2   | |   EC2 Instance 3   |
         +-------------------+ +-------------------+ +-------------------+
         | Web App (Port 80) | | Web App (Port 80) | | Web App (Port 80) |
         +-------------------+ +-------------------+ +-------------------+

### Key Features of Network Load Balancer (NLB):

**High Performance and Low Latency:**

- NLB is designed for high performance and can handle sudden and volatile traffic patterns. It is capable of scaling automatically to manage millions of requests per second.

**Static IP Addresses and Elastic IPs:**

- NLB provides a single static IP per Availability Zone, simplifying DNS resolution and security configurations.
- It can also use Elastic IPs, which are static IP addresses associated with your AWS account, making it easier to set up firewall rules.

**Cross-Zone Load Balancing:**

- NLB can distribute incoming traffic across multiple Availability Zones, improving availability and fault tolerance. Cross-zone load balancing can be enabled or disabled based on the application needs.

**Preserving Client IP** 

- This is about maintaining the original client’s IP address in requests so that the receiving server can see where the request originated from.

**Supporting Targets with Dynamic IP Addresses** 

- This is about the NLB's ability to register and route traffic to targets whose IPs might change dynamically, such as containers, without needing to reconfigure the load balancer manually.

