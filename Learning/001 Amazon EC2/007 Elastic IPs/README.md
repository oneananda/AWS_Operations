# Elastic IPs

Elastic IPs are a static, public IPv4 address that we can allocate to AWS account. These addresses are associated with the AWS account, not directly tied to a specific instance, making them flexible and reusable across different instances or other AWS resources.

## How Elastic IPs Work

- **Allocation:**  Process of allocating a Elastic IP
- **Association:** Associating the Elastic IP to a EC2 instance
- **Re-association:** Change the association to another EC2 instance if it fails
- **Release:** Release the allocation


## Use cases

**Maintaining Service Continuity During Instance Failures**

If the EC2 instance fails due to any reason, we can associate the `Elastic IP` to new one to maintain the business continuity.

**Public-Facing API Endpoints**

When hosting an API that needs to be accesed by clients globally, and we want the endpoints remains same (`Consistent IP address`) even if the backend infrascructure changes.

**Debugging and Testing External Services**



