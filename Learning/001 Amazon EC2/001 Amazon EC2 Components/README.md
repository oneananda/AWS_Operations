# Amazon EC2 Components

Amazon EC2 Components - This repo folder provides comprehensive resources related to Amazon EC2 Components.

## Understanding EC2 Instance Components

- **AMI** - Amazon Machine Image
- **Instance Type**
- **Instance Size**

### Configuring Instances

- **Number of Instances**
- **Billing Type**
- **Configure VPC (Virtual Private Cloud)**
- **Configure Subnet**
- **Configure IP Settings (Public, Private, IPv4, IPv6)**
- **Configure Domain / Directory Integration**
- **Configure Placement Group**
- **Configure IAM Roles**
- **Configure Shutdown Behavior**
- **Enable Termination Protection**
- **Option to Mount EFS (Elastic File System)**
- **Configure User Data (Scripts/Commands on Launch)**

### Storage

- **Add Storage of Preferred Type**
- **Determine EBS (Elastic Block Store) Volumes When the Instance is Terminated**

### Tags

- **Add Tags for Easy Identification**

### Security Groups

- **Add Security Groups to Act as a Firewall**
- **Manage Inbound/Outbound Traffic via Security Groups**
- **Modify at Any Time**

### Launch Instance

- **Confirm setting and launch the instance**

### Key Things to Note:

- AMIs cannot be modified post-launch.
- There is no option to change the key pair after instance launch.
- Instance types and sizes can't be changed post launch
- EIPs (Elastic IPs) are static, won't changed even after instance restart / stopped and started
- Data on ephermal storage (instance store) will be lost if the instance is terminated / stopped but will not lost if the instance is restarted
- Security groups are stateful, if you allow any inbound traffic, automatically the outbound is allowed
- The instance's public IP address will be changed if it is started and stopped and will not lost if the instance is restarted, additionaly you are using EIP the IP remains the same. 
- Termination protection disabled by default
- EC2 instances can be part of Auto Scaling Group (ASG)
- Basic monitoring is available using CloudWatch
- 