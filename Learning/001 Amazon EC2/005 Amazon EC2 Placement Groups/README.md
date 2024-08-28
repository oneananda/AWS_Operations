# EC2 Placement Groups

We can place our EC2 machines in a particular set of underlying hardware based on the need.

### Cluster Placement Group 

The EC2 instances are placed together in a `Availablity Zone`, this can span across peered VPCs belong to the same region,

This will help the applications to achieve low-latency and high-network throughput.

- All instances are placed within a single Availability Zone.
- Instances in this group benefit from high-speed, low-latency networking (up to 100 Gbps per instance).
- The failure of the hardware (such as a rack) affects all instances in the cluster.

### Spread Placement Group

The EC2 instances are spread across distinct underlying hardware, reducing risk of simulatneous failures.

- Instances are spread across multiple racks, with each instance placed on distinct hardware (Racks).
- Each rack will have separate network and power sorce
- This is not supported by dedicated instances or hosts
- You can have up to seven running instances per Availability Zone within a spread placement group.
- The spread placement group can span multiple Availability Zones.

**Use case:**

Can be used by small number of critical instances that needs to be separated from each other

### Partition Placement Group

The EC2 instances are placed in a logical partition called `Partitions` making sure that the instances are not sharing same underlying hardware

- Each partition is isolated from the failure of other partitions. (Partial High-Availablity)
- Amazon EC2 ensures that no two partitions within a placement group share the same racks, allowing you to protect your application from rack-level failures.
- We can have up to seven partitions (and multiple instances in it, more than seven) per Availability Zone.
- We are having the option to select which parition group can be initiated

**Use Case:** 

Suitable for large-scale distributed applications like HDFS, HBase, or Cassandra, where data replication and fault isolation are critical. For example, if you have a distributed database with multiple nodes, you can place different nodes in different partitions to prevent a failure in one partition from affecting other nodes.