Route 53’s **failover routing** 

This is to redirect traffic to a static S3-hosted site whenever your primary, database-backed application becomes unhealthy (for example, because the database is unreachable):

- **Primary endpoint:** Your application servers (e.g. EC2 instances or a load balancer) serve dynamic content by reading from a database.  
- **Health check:** Route 53 monitors the health of that endpoint—if it can’t connect (e.g. the DB is down), the health check fails.  
- **Secondary endpoint:** A static website hosted in an S3 bucket containing either a “maintenance” page or a pre-rendered, cache-only version of the content.  
- **Failover routing policy:** When the primary health check fails, Route 53 automatically answers DNS queries with the alias record pointing at your S3 bucket instead of the application servers  ([Failover routing - Amazon Route 53 - docs.aws.amazon.com](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy-failover.html?utm_source=chatgpt.com), [Configuring fail over to an S3 bucket when an Amazon Route 53 health ...](https://repost.aws/knowledge-center/fail-over-s3-r53?utm_source=chatgpt.com)).

This ensures end-users still get a friendly, informative page rather than an error, giving you time to restore database connectivity without a total outage.

