# Amazon EC2 Instance Components

`Amazon EC2 instances` are virtual servers the provide computing resources need to run the applications on the cloud.

It enables the users to run their application on virtual servers known as instances without need to invest in physical hardware, with EC2 we can scale the resources up and down on need basis, making it to ideal for the business ranging from small to large enterprises.

`Amazon EC2 Instance Components` - There are several components comes to play when it comes to instance creation.

## Understanding EC2 Instance Components

- **AMI** - Amazon Machine Image (Can be Windows AMI, Linux, MacOS)
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
- **Determine EBS (Elastic Block Store) Volumes when the Instance is Terminated**

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
- Data on ephemeral storage (instance store) will be lost if the instance is terminated / stopped but will not lost if the instance is restarted
- Security groups are stateful, if you allow any inbound traffic, automatically the outbound is allowed
- The instance's public IP address will be changed if it is started and stopped and will not lost if the instance is restarted, additionaly if you are using EIP the IP remains the same. 
- Termination protection disabled by default
- EC2 instances can be part of Auto Scaling Group (ASG)
- Basic monitoring is available using CloudWatch
