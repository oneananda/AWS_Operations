# **AWS Systems Manager (SSM)** Overview

AWS Systems Manager (SSM) is a comprehensive management tool that helps automate operational tasks, enhance resource visibility, and maintain system security and compliance across AWS environments and on-premises servers. SSM acts as a unified interface for managing and automating the infrastructure.

---

## **Key Components of AWS Systems Manager**


| **Component**          | **Description**                                                                                 | **Use Case**                                                                                   |
|-------------------------|-------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|
| **Session Manager**     | Provides secure, browser-based shell access to managed instances without opening inbound ports. | Troubleshooting, auditing access, and secure remote management of instances.                 |
| **Parameter Store**     | A secure repository for configuration data and secrets.                                         | Storing and retrieving API keys, passwords, and application settings.                        |
| **Run Command**         | Executes commands/scripts on managed instances at scale.                                        | Installing updates, restarting services, and collecting logs.                                |
| **Automation**          | Automates complex operational tasks using predefined or custom workflows (runbooks).            | Creating backups, managing AMIs, and instance provisioning.                                  |
| **Patch Manager**       | Automates patching for operating systems and applications.                                      | Ensuring compliance by applying updates to EC2 and on-premises servers.                      |
| **Inventory**           | Collects and tracks metadata about managed instances.                                           | Monitoring software versions, licenses, and configurations.                                  |
| **Compliance**          | Monitors and evaluates resource compliance against defined policies.                            | Ensuring adherence to security and configuration standards.                                  |
| **State Manager**       | Ensures instances maintain a desired state.                                                     | Configuring software installations or scheduled tasks.                                       |
| **OpsCenter**           | Centralized hub for operational issue investigation and resolution.                             | Diagnosing and resolving alerts or failures integrated with CloudWatch and Config.           |
| **Change Manager**      | Manages change workflows with approvals and automated processes.                                | Coordinating code or infrastructure changes with governance.                                 |

---