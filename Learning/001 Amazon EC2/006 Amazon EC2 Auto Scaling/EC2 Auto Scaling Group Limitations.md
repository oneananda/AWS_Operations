# AWS EC2 Auto Scaling Group Limitations

When you're working with Amazon EC2 Auto Scaling Groups, there are some things we need to be aware of to avoid surprises. Here’s a breakdown of the key limitations:

## Instance Type Availability
- **Instance Type Availability**: Not all instance types are available in every region or Availability Zone. If we're relying on a specific type, we might run into issues if it’s not available when we need it.
