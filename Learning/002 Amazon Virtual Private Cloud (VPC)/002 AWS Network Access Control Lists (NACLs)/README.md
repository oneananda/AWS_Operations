# AWS Network Access Control Lists (NACLs)

NACLs act as a stateless firewall that controls inbound and outbound traffic at the subnet level within a Virtual Private Cloud (VPC).

## Key Features

### Stateless

It won't track the state, each request will be validated everytime

### Subnet-Level Security

NACLs operate at the subnet level. Every subnet in a VPC must be associated with a NACL. If you don’t explicitly associate a subnet with a NACL, it’s automatically associated with the default NACL.

