# EC2 Metrics

## EC2 Metrics: Available vs. Not Available in CloudWatch

This table lists the EC2 instance metrics that are available by default in CloudWatch and the metrics that are **not available by default** (require custom setup with the CloudWatch agent).

| Metric                           | Availability in CloudWatch | Notes                                                      |
|----------------------------------|----------------------------|------------------------------------------------------------|
| **CPU Utilization**               | Available                  | Automatically collected by CloudWatch.                     |
| **Disk Read Operations**          | Available                  | Automatically monitored (DiskReadOps).                     |
| **Disk Write Operations**         | Available                  | Automatically monitored (DiskWriteOps).                    |
| **Disk Read Bytes**               | Available                  | Automatically monitored (DiskReadBytes).                   |
| **Disk Write Bytes**              | Available                  | Automatically monitored (DiskWriteBytes).                  |
| **Network Packets In**            | Available                  | Automatically monitored (NetworkPacketsIn).                |
| **Network Packets Out**           | Available                  | Automatically monitored (NetworkPacketsOut).               |
| **Network In (Bytes)**            | Available                  | Automatically monitored (NetworkIn).                       |
| **Network Out (Bytes)**           | Available                  | Automatically monitored (NetworkOut).                      |
| **Status Check Failed (Instance)**| Available                  | Monitors instance-level status failures.                   |
| **Status Check Failed (System)**  | Available                  | Monitors system-level status failures.                     |
| **Instance Launch Time**          | Available                  | Collected by CloudWatch as part of instance metadata.       |

| **Memory Utilization**            | Not Available              | Requires custom metric setup via CloudWatch agent.          |
| **Memory Available**              | Not Available              | Requires custom metric setup via CloudWatch agent.          |
| **Memory Used**                   | Not Available              | Requires custom metric setup via CloudWatch agent.          |
| **Disk Space Utilization**        | Not Available              | Requires custom metric setup via CloudWatch agent.          |
| **Disk Space Available**          | Not Available              | Requires custom metric setup via CloudWatch agent.          |
| **Swap Usage**                    | Not Available              | Requires custom metric setup via CloudWatch agent.          |
| **Memory Cache**                  | Not Available              | Requires custom metric setup via CloudWatch agent.          |
| **Page File Usage**               | Not Available              | Requires custom metric setup via CloudWatch agent.          |
| **Application-Specific Metrics**  | Not Available              | Requires custom metric setup based on application needs.    |
