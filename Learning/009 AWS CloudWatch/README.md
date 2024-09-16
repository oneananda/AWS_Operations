# AWS CloudWatch

AWS CloudWatch is a service which is used to monitor the AWS services, 

- It collects and tracks metrices 
- Collects and monitor log files
- Sets alarms
- Provide insights on performance
- Provide insights on health status

### Use cases

**Application Performance Monitoring**

Use Case: Monitor the performance of web applications running on EC2, Lambda, or container services like ECS and EKS.

**Infrastructure Monitoring**

Use Case: Monitor the health and performance of AWS infrastructure components such as EC2 instances, RDS databases, and load balancers.

**Security Monitoring**

Use Case: Enhance security posture by monitoring access patterns and unauthorized activities.

**Serverless Application Monitoring**

Use Case: Monitor serverless applications built with AWS Lambda and API Gateway.

**Incident Response and Automation**

Use Case: Automate responses to incidents and operational issues.


---

Detailed table for AWS CloudWatch covering various parameters such as features, purposes, cost considerations, use cases, and key benefits:

| **Parameter**        | **Description**                                            |
|----------------------|------------------------------------------------------------|
| **Purpose**          | Monitoring and observability for AWS resources and applications. |
| **Features**         | Metrics, Alarms, Logs, Dashboards, Events, Synthetics, Contributor Insights, Service Lens, Anomaly Detection |
| **Metrics**          | Collects and tracks metrics from AWS services and custom sources. |
| **Alarms**           | Notifies based on metric thresholds, integrates with SNS, Auto Scaling, etc. |
| **Logs**             | Collects, monitors, and analyzes log data from applications and AWS services. |
| **Dashboards**       | Visualizes metrics and logs using customizable dashboards. |
| **Events**           | Detects and responds to changes in AWS resources and applications. |
| **Synthetics**       | Monitors application endpoints to check for availability and latency. |
| **Contributor Insights** | Analyzes log data to identify high-volume contributors to operational issues. |
| **Service Lens**     | Provides an end-to-end view of application performance, including traces, metrics, and logs. |
| **Anomaly Detection** | Automatically detects anomalous behavior in metric data. |
| **Cost Considerations** | Pay per usage (metrics, logs, alarms, dashboards, events, etc.). |
| **Use Cases**        | Application monitoring, resource utilization tracking, performance optimization, operational health checks, automated responses. |
| **Scaling Options**  | Automatically scales to handle large volumes of metrics, logs, and events. |
| **Key Benefits**     | Real-time monitoring, automated responses to changes, enhanced visibility into AWS environments, customizable alerting, integrated with AWS services. |
| **Integration**      | Integrates with AWS Lambda, EC2, RDS, S3, Elastic Load Balancing, Auto Scaling, and third-party applications. |
| **Retention**        | Metrics retention for 15 months, logs retention configurable. |
| **Security**         | Data encryption, access control via IAM policies, and CloudWatch Logs Insights for query-based access. |
| **Setup Complexity** | Easy to set up with AWS services; can be more complex when integrating with custom applications. |

