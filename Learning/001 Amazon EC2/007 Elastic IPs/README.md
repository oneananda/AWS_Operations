# Elastic IPs

Elastic IPs are a static, public IPv4 address that we can allocate to AWS account. These addresses are associated with the AWS account, not directly tied to a specific instance, making them flexible and reusable across different instances or other AWS resources.

## How Elastic IPs Work

- **Allocation:**  Process of allocating a Elastic IP
- **Association:** Associating the Elastic IP to a EC2 instance
- **Re-association:** Change the association to another EC2 instance if it fails
- **Release:** Release the allocation

# Elastic IP Management Processes 

| **Process**      | **Description**                                                                                     | **Actions Involved**                                                                                   | **Costs**                                                                               | **Best Practices**                                                                                                                                      |
|------------------|-----------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Allocation**   | Process of allocating an Elastic IP to your AWS account.                                            | 1. Request an Elastic IP from AWS. <br> 2. Allocate it to your account.                                | No cost if associated with a running instance. <br> Cost incurred if not used.          | Allocate only when necessary to avoid unnecessary usage. <br> Track IP allocations to manage limits.                                                   |
| **Association**  | Associating the Elastic IP to an EC2 instance to provide a static public IP.                        | 1. Select an EC2 instance. <br> 2. Associate the Elastic IP with the instance.                         | No additional cost when associated with a running instance.                            | Ensure association with critical instances that require static IP addresses. <br> Regularly review associations.                                       |
| **Re-association** | Changing the association to another EC2 instance if the current instance fails.                    | 1. Identify the failed instance. <br> 2. Disassociate the Elastic IP. <br> 3. Associate it with a new instance. | No additional cost; handled within AWS limits. <br> Re-association is quick and cost-effective. | Plan for failover scenarios where reassociation is necessary. <br> Automate the process to minimize downtime.                                          |
| **Release**      | Releasing the Elastic IP allocation back to AWS when it's no longer needed.                         | 1. Disassociate the Elastic IP from any instances. <br> 2. Release the IP back to AWS.                 | No cost for releasing, but IP is returned to AWS pool.                                 | Release unused IPs promptly to avoid charges. <br> Regularly audit Elastic IP usage.                                                                   |

## Additional Points

- **Elastic IPs** provide a static IPv4 address for AWS resources, allowing for flexible IP management across different instances or services.
- It's important to manage Elastic IPs efficiently to avoid unnecessary costs and to ensure high availability and reliability of applications dependent on these IP addresses.
- AWS encourages efficient use of Elastic IPs by charging for IPs that are not associated with running instances, so monitoring and management are crucial.

## Use cases

**Maintaining Service Continuity During Instance Failures**

If the EC2 instance fails due to any reason, we can associate the `Elastic IP` to new one to maintain the business continuity.

**Public-Facing API Endpoints**

When hosting an API that needs to be accesed by clients globally, and we want the endpoints remains same (`Consistent IP address`) even if the backend infrascructure changes.

**Debugging and Testing External Services**



