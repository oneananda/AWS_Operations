# Elastic IPs

Elastic IPs are a static, public IPv4 address that we can allocate to AWS account. These addresses are associated with the AWS account, not directly tied to a specific instance, making them flexible and reusable across different instances or other AWS resources.

## Use cases

**Public-Facing API Endpoints**

When hosting an API that needs to be accesed by clients globally, and we want the endpoints remains same (`Consistent IP address`) even if the backend infrascructure changes.

**Debugging and Testing External Services**



