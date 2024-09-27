# Lift and Shift

This terminology is to describe to move the traditional on-premises applications to any cloud based environment, the term emphasis there shouldn't be any code change but only the config changes

This process will be done through containieraization of the applications


### Overview of Container-Related Services on AWS

AWS provides a variety of container services to help you run, manage, and orchestrate containerized applications in a cloud environment. Here's an explanation of key container services:

#### 1. **Amazon Elastic Kubernetes Service (EKS)**
   - **Overview**: Amazon EKS is a managed Kubernetes service that allows you to run Kubernetes applications on AWS without the complexity of setting up your own Kubernetes cluster. EKS handles the management of the control plane, including the API server and etcd, allowing you to focus on running your applications.
   - **Key Features**:
     - Fully compatible with standard Kubernetes, allowing portability.
     - Automatic scaling and self-healing.
     - Integration with other AWS services like IAM, CloudWatch, and VPC.

#### 2. **Amazon Elastic Container Service (ECS)**
   - **Overview**: Amazon ECS is a fully managed container orchestration service that enables you to run Docker containers on AWS. Unlike EKS, ECS is tightly integrated with the AWS ecosystem and does not require you to manage a control plane or master nodes.
   - **Key Features**:
     - Supports both EC2 (self-managed) and Fargate (serverless) launch types.
     - Simplified container orchestration.
     - Seamless integration with AWS services such as ALB, IAM, and CloudWatch.

#### 3. **AWS Fargate**
   - **Overview**: AWS Fargate is a serverless compute engine for containers that works with both Amazon ECS and Amazon EKS. With Fargate, you do not need to manage the underlying infrastructure; AWS automatically provisions and scales the compute resources.
   - **Key Features**:
     - Simplifies running containers without managing servers.
     - Automatically scales containers based on demand.
     - Ideal for microservices and stateless applications.

#### 4. **Amazon Elastic Container Registry (ECR)**
   - **Overview**: Amazon ECR is a fully managed Docker container registry that allows you to store, manage, and deploy container images. It integrates with ECS, EKS, and Fargate.
   - **Key Features**:
     - Secure and scalable container registry.
     - Supports image versioning and vulnerability scanning.
     - Integrated with IAM for access control.

#### 5. **AWS App Runner**
   - **Overview**: AWS App Runner is a fully managed service that allows you to deploy and run containerized applications without worrying about infrastructure. You provide your source code or a container image, and App Runner automatically builds, deploys, and runs your application.
   - **Key Features**:
     - Simple application deployment with a few clicks.
     - Automatic scaling.
     - Designed for web applications and APIs.

### Comparison Table: "Lift & Shift" Capabilities and Other Features

| Feature/Service          | Amazon EKS                   | Amazon ECS                   | AWS Fargate                  | Amazon ECR                   | AWS App Runner              |
|--------------------------|------------------------------|------------------------------|------------------------------|------------------------------|-----------------------------|
| **"Lift & Shift" Capability** | High (Kubernetes standard allows migration of on-premise workloads) | Medium (Docker-based, requires AWS-specific configurations) | Medium (Containers abstracted, but may require adjustments for serverless) | N/A (Registry service only) | Low (More suited for new applications rather than lift-and-shift) |
| **Orchestration**        | Kubernetes-based             | ECS-specific                 | Managed by Fargate           | N/A                         | N/A                         |
| **Managed Control Plane**| Yes                          | Yes (Simplified, no direct access) | Yes (Fully managed)          | N/A                         | Yes                         |
| **Serverless Option**    | Yes (EKS + Fargate)          | Yes (ECS + Fargate)          | Fully serverless             | N/A                         | Fully managed              |
| **Infrastructure Management** | Required (Kubernetes worker nodes) | Optional (with Fargate)      | None                         | N/A                         | None                        |
| **Integration with AWS Services** | High (IAM, VPC, CloudWatch, etc.) | High (Tightly integrated with AWS) | High (Integrated with ECS and EKS) | High (Integrated with ECS/EKS) | Medium                     |
| **Scalability**          | Automatic and Manual         | Automatic and Manual         | Automatic                    | N/A                         | Automatic                  |
| **Ease of Migration**    | Complex (requires Kubernetes knowledge) | Moderate (Docker knowledge required) | Simple (if already containerized) | N/A                        | Simple (for web apps)      |
| **Use Cases**            | Microservices, complex applications | Web services, batch processing | Microservices, stateless apps | Storing container images   | Web applications, APIs     |
| **Learning Curve**       | High (Kubernetes expertise)  | Low to Medium                | Low                          | Low                         | Low                         |
| **Cost Management**      | Pay for EC2 nodes and EKS control plane | Pay for EC2 nodes or Fargate | Pay for the task duration (no servers) | Storage costs (per GB)    | Pay for usage              |
