# Amazon ElastiCache

Amazon ElastiCache is a fully-managed (by AWS) in memory caching service from AWS,

It provides support for 2 popular in-memory caching engines

- Redis
- Memcached

## Analogy

In a book library, the regular process is, if we want to get a book, we need to go to the shelf and search for it, 

But, if the popular or frequently used books are placed in a center table means, that will be more useful right, the same idealogy applies to Amazon ElastiCache, it is placing the frequently accessed data in a intermediate place called in-memory cache so the accesing time to that is significanlty very high.

## Key Features

- High Performance: ElastiCache significantly improves application performance by retrieving data from high throughput and low-latency in-memory caches instead of disk-based databases. This is particularly useful for read-heavy workloads like web applications, gaming, and e-commerce sites.
- Fully Managed Service: AWS manages the 
  - setup, 
  - scaling, 
  - patching, 
  - monitoring, 
  - and security of the cache clusters, allowing the users to focus on application instead of infrastructure management.	
- Scalability: ElastiCache supports scaling up or down based on the application's needs. For Redis, it offers features like 
  - cluster mode, 
  - sharding, 
  - and read replicas, allowing you to distribute the data and handle large workloads efficiently.
- High Availability: We can configure for Multi-AZ (Availability Zone) with automatic failover.
- Security: Two levels of security is applied, it integrates with Amazon VPC (Virtual Private Cloud) for network isolation and security groups for access control and  also supports encryption in transit and at rest for Redis.


### Cluster Mode

Cluster mode in `Amazon ElastiCache (specifically with Redis)` is like dividing your work among a group of people to get things done faster and more efficiently. Instead of putting all your data in one place, cluster mode splits the data across multiple smaller units called nodes, and these nodes work together as a team.

`Cluster Mode Example:`

In a shopping cart application, we need to handle massive amounts of data, including 

- product details, 
- user sessions, 
- and shopping cart information.
 
In cluster mode, the data is split across multiple nodes in the cluster. 

For instance, we could have 

- one node handling product data, 
- another managing user sessions, 
- and another for shopping cart details.




