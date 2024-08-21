# Amazon EC2 Instance Purchase Options

## Instance Purchasing Options in AWS EC2:

---

### On-Demand Instances

- Pay by hour / pay by seconds
- `No long term commitments`
- Charges only if the `instance is running`

---

### Savings plan

- Compute savings plan 
  - Provides most flexiblity
  - Discounts apply across different
	- Instance types
	- Sizes
	- Regions
- EC2 instance savings plan 
  - Offers the lowest prices
  - Discounts apply to specific instance families in a choosen region

---

### Reserved Instances (RI)

**General characteristics for Reserved Instances**

- Commitment from 1 to 3 years
- The following determine the price
  - Instance type
  - Region
  - Platform
- Can `buy / sell the unused instances` in AWS Marketplace, `except for Convertible RIs`

**Standard Reserved Instances**

- Use Case: `Steady-state`, predictable workloads.
- Economy: High savings with long-term commitment.

**Convertible Reserved Instances**

- Use Case: Workloads that `may change`.
- Economy: Moderate savings with long-term commitment.

**Scheduled Reserved Instances**

- Use Case: `Predictable workloads` that run on schedule.
- Economy: Cost savings compared to On-Demand, but with scheduled flexibility.

---

### Spot Instances

- Cost sensitive that `can accept interuptions`
- Suitable for non-critical workloads
- There is `no commitment` needed
- Anytime the instance may get terminated

---

### Dedicated Hosts

- `Dedicated hardware`
- Rent a host or rack
- Suitable for the SW which you pay per socket, pay per core, pay per VM licences to reduce costs
- Supports `BYOL (Bring your own licence)`

Dedicated hosts are particularly used when you have a dedicated SW which is tied to specific physical metrices such as,
- Number of core
- Sockets
- Virtual Machines

These Software often desingnated to run on specifcic Hardware

**Example: SQL Server Licencing**

Suppose you have a SQL Server license that is based on the number of physical cores on a server. The license states that you can run SQL Server on up to 8 physical cores per license.

- **Physical Core Visibility:** A Dedicated Host gives you visibility into the physical server's configuration. For instance, you might choose a Dedicated Host with exactly 8 cores to fully utilize your SQL Server license.
- **Compliance:** Since you're aware of and can control the number of cores, you can ensure that your SQL Server instance is compliant with the licensing terms. You can place one or more instances of SQL Server on this Dedicated Host, knowing that you're not exceeding the licensed core count.
- **Host Affinity (Attachment):** If your license requires that the software remains on specific hardware, you can use host affinity to ensure that your SQL Server instances always run on this Dedicated Host.

If you are not using Dedicated host for this scenario 

- **No Physical Core Visibility:** In a typical EC2 instance or even on a Dedicated Instance, you don’t have visibility or control over the underlying physical cores
- **Potential Non-Compliance:** Without this visibility and control, it becomes challenging to ensure compliance with licensing terms that are tied to physical core counts

---

### Dedicated Instances

- `Dedicated hardware` 
- Similiar to Dedicated Hosts but having less control over the hardware
- Less granular control
- Supports partially `BYOL (Bring your own licence)`
- Typically, Dedicated Instances are less expensive than Dedicated Hosts

---

## Differences Between Dedicated Hosts and Dedicated Instances

| **Feature**                      | **Dedicated Hosts**                                                                 | **Dedicated Instances**                                                |
|----------------------------------|--------------------------------------------------------------------------------------|------------------------------------------------------------------------|
| **Control and Visibility**       | Provides control over the physical server, with visibility into sockets, cores, etc. | No visibility into the underlying host; AWS manages the server placement. |
| **Licensing**                    | Supports BYOL for licenses that require core, socket, or VM-level compliance.        | Supports BYOL, but with less flexibility in managing hardware-bound licenses. |
| **Host Affinity (Attachment)**   | Allows instance placement on specific Dedicated Hosts, enabling host affinity.       | No control over instance placement; AWS handles it.                    |
| **Compliance Requirements**      | Helps meet compliance by providing control over the physical environment.            | Less suited for strict compliance needs due to lack of control over the physical host. |
| **Instance Types**               | Allows mixing of different EC2 instance types within the same family on a single host. | Instances are managed by AWS with no control over instance type placement. |
| **Management Complexity**        | Requires more management and monitoring due to increased control.                    | Simpler to manage, as AWS handles the underlying server management.     |
| **Cost**                         | Potentially higher cost due to increased control and management.                     | Generally easier and potentially less expensive to manage, depending on use case. |

---

### Capacity Reservations

- We can reserve Capacity Reservations for any Availablity Zone for any duration
- No long term commitment is needed
- This is ensuring capacity availability for mission-critical apps.

---
