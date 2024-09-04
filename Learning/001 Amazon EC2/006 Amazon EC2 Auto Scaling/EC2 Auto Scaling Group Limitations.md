# AWS EC2 Auto Scaling Group Limitations

When you're working with Amazon EC2 Auto Scaling Groups, there are some things we need to be aware of to avoid surprises. Here’s a breakdown of the key limitations:

## Instance Type Availability
- **Instance Type Availability**: Not all instance types are available in every region or Availability Zone. If we're relying on a specific type, we might run into issues if it’s not available when we need it.

## Capacity Limits
- **Launch Configuration**: Once we set up a launch configuration, we can't change it. If we need to update settings like the instance type or AMI, we'll have to create a new launch configuration and update the Auto Scaling Group.
- **Scaling Limits**: AWS has limits on the number of Auto Scaling Groups (default is 200 per region), launch configurations (default is 1,000), and instances per Auto Scaling Group (default is 2,000). We can request increases, but these limits might still be a bottleneck.
