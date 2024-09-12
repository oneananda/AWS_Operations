# AWS NAT Instance

### Definition:

A NAT Instance is an EC2 instance configured to act as a NAT device. It allows instances in a private subnet to initiate outbound traffic to the internet while blocking inbound traffic initiated from the internet.

In other words, very similar functionlity like NAT Gateway, unike NAT Gateway we can fully configure based on our needs for AWS NAT Instance.

And this is loosing the key functionality that NAT Gateway is providing

- Not a managed service
- Not auotscale by default
- Not monitoaable by default

### Advantages

- We can fully customize this
- We can apply customized security aspects 

