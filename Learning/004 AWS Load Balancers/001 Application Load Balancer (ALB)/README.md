# Application Load Balancer (ALB)

__What is ALB?__

ALB is a load balancing mechanism which is capable of load balance the incoming traffic based on

### Host-Based Routing:

We can xcnfigure ALB to use host-based routing to distinguish between different tenants. For example:

- tenant1.example.com directs traffic to Tenant 1's microservices.
- tenant2.example.com directs traffic to Tenant 2's microservices.

### Path-Based Routing: 

We can use path-based routing within each tenant to direct traffic to specific microservices. For example:

- Requests to tenant1.example.com/api/auth/* route to the authentication service.
- Requests to tenant1.example.com/api/billing/* route to the billing service.

### Header-Based Routing: 

We can implement header-based routing to manage tenant-specific features or A/B testing. 

For example, headers like `X-Tenant-ID` or `X-Feature-Flag` can direct traffic to different versions of a service.

### Combining Path and Host Conditions

We can combine path and host conditions to create more specific routing rules. For example, you could route traffic to a particular service based on both the host and path, such as routing requests from api.example.com/orders/* to a specific backend service.

**Example Configuration in ALB:**

Host condition: api.example.com
Path condition: /v1/orders/*
Target Group: API V1 Orders Service

This configuration routes all requests to api.example.com with paths starting with /v1/orders/ to a designated backend service, allowing for more granular control over traffic routing in the application architecture.

### Conclusion:

We can effectively use ALB with NLB for application specific routes and high traffic routes respectively.

