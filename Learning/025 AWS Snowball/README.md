# AWS Snowball

The Offline storage devices provided by AWS, through this we can transfer even petabyte size of data to cloud.

### Device types

AWS Snowball offers several device types to accommodate different data transfer needs:

1. **Snowball Edge Storage Optimized**:
   - **Capacity**: 80 TB usable storage.
   - **Use Case**: Ideal for transferring large amounts of data and performing edge computing tasks with local processing capabilities.

2. **Snowball Edge Compute Optimized**:
   - **Capacity**: 42 TB usable storage.
   - **Use Case**: Designed for compute-intensive workloads, it includes additional processing power for running applications locally.

3. **Snowmobile**:
   - **Capacity**: Up to 100 PB per shipment.
   - **Use Case**: A massive data transfer service using a shipping container transported by a truck for organizations needing to transfer exabytes of data.

4. **Snowcone**:
   - **Capacity**: 8 TB usable storage.
   - **Use Case**: A smaller, portable option suitable for edge computing and smaller data transfers, making it ideal for remote locations.

Each device type is tailored to specific scenarios, allowing businesses to choose the right solution based on their data transfer and processing requirements.

### Comparison table for the different AWS Snowball device types:

| **Device Type**               | **Usable Capacity** | **Compute Capability** | **Use Case**                                      | **Data Transfer Speed**    |
|-------------------------------|---------------------|------------------------|---------------------------------------------------|-----------------------------|
| **Snowball Edge Storage Optimized** | 80 TB               | Yes                    | Large data transfers and edge storage              | Up to 1 Gbps                |
| **Snowball Edge Compute Optimized** | 42 TB               | Yes                    | Compute-intensive workloads with local processing   | Up to 1 Gbps                |
| **Snowmobile**                | Up to 100 PB        | No                     | Massive data transfers (exabytes)                  | Truck-based transport        |
| **Snowcone**                  | 8 TB                | Yes                    | Small data transfers and portable edge computing    | Up to 14 Gbps               |

### Key Differences:

- **Capacity**: Snowmobile offers the largest capacity, suitable for organizations with vast amounts of data. Snowcone is the most compact.
- **Compute Capability**: Snowball Edge devices have compute capabilities, while Snowmobile does not. Snowcone also supports edge computing.
- **Use Case**: Each device is tailored for specific scenarios, from large-scale migrations to remote data collection and processing. 

