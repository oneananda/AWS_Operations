# Hot Partition in DynamoDB

A `hot partition in DynamoDB` occurs when one or more partitions receive a disproportionately high amount of traffic, while other partitions remain underutilized. This imbalance can happen if the partition key used to distribute data doesn't have enough distinct values, leading to concentrated read or write activity on a small subset of partitions.

Let’s consider a real-world example to explain **hot partitions** in DynamoDB and how to avoid them.

### Scenario:

You are building an online shopping website, and you want to store customer orders in a DynamoDB table. Let’s say you define the table with the following schema:

- **Partition key**: `CustomerID` (The unique ID of the customer)
- **Sort key**: `OrderID` (The unique ID of the order placed by the customer)

### Problem:

If you have a small number of high-volume customers (e.g., big corporate clients placing hundreds of orders daily) and many low-volume customers, you will have a **hot partition** problem. For example:

- **Customer A** might place 500 orders every day.
- **Customer B** might place 10 orders every day.
- Other customers might place only a few orders every month.

In this case, DynamoDB will assign all the orders for each customer (based on `CustomerID`) to the same partition, resulting in **high traffic on the partition for Customer A**. This could overload that specific partition and cause performance issues, like throttling and delayed responses. Meanwhile, the partitions for low-traffic customers remain underutilized.

### How to Avoid Hot Partitions:

1. **High Cardinality Partition Key**:
   Instead of just using `CustomerID` as the partition key, you can include an additional high-cardinality attribute, like `OrderDate` or `OrderMonth`. This spreads the data across more partitions.

   **New Partition Key**: Combine `CustomerID` and `OrderDate`.
   - Partition key: `CustomerID#OrderDate`
   - Sort key: `OrderID`
   
   Now, each day's orders for a given customer are spread across different partitions, avoiding hotspots for high-traffic customers.

   Example of partition key values:
   - `CustomerA#2024-09-21`
   - `CustomerA#2024-09-22`
   - `CustomerB#2024-09-21`

   This ensures that the system doesn't overload a single partition based on customer activity alone.

2. **Write Sharding**:
   If the `CustomerID` is required to be the sole partition key, another approach is **write sharding**. In this case, you modify the partition key by adding a random suffix.

   For instance, you could add a random number between 1 and 10 to the `CustomerID` to create multiple shards:

   **New Partition Key**: `CustomerID + RandomNumber`
   - Partition key: `CustomerID#Shard1`
   - Sort key: `OrderID`

   Example:
   - For `CustomerA`, generate keys like `CustomerA#1`, `CustomerA#2`, etc.
   - Orders will be distributed randomly across different shards, reducing the risk of hot partitions.

### Summary:

- In the **original setup**, `CustomerID` as the partition key can lead to hot partitions because high-traffic customers cause excessive load on certain partitions.
- By **adding high-cardinality attributes** or using **write sharding**, you can distribute the workload evenly across DynamoDB partitions, avoiding hot partitions and improving performance.