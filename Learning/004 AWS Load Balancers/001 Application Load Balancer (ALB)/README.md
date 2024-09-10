# Application Load Balancer (ALB)

ALB is capable of load balance the traffic based on

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

