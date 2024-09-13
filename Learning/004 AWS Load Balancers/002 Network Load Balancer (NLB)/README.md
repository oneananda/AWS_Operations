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
