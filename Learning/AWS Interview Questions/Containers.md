# **Choosing Between Containers and Other AWS Services**

> **Scenario:**
> A retail client is building a new microservices-based e-commerce platform. They anticipate unpredictable traffic spikes (e.g., flash sales), require rapid iteration through CI/CD, and want to minimize ongoing operational overhead. They’re evaluating container orchestration (ECS/EKS on EC2 vs. Fargate) against serverless (AWS Lambda, App Runner) and traditional compute (EC2, Elastic Beanstalk).
>
> **Question:**
> As the AWS Solutions Architect brought in to guide this compute-model decision…
>
> 1. **Clarifying Questions:**
>
>    * What traffic patterns do you expect (steady baseline vs. bursty peaks, and how predictable are those peaks)?
>    * How mature is your team’s container orchestration expertise compared to serverless/Function-as-a-Service development?
>    * What are your latency and throughput SLA requirements for core flows (e.g., product search, checkout)?
>    * Do any services require specific OS/custom kernel modules or persistent local storage that might favor container or VM models?
>    * What is your desired deployment cadence and CI/CD toolchain (CodePipeline, Jenkins, GitHub Actions, etc.)?
> 2. **Decision Criteria:**
>
>    * **Operational Overhead:**
>      – Full control plane management (EKS on EC2) vs. managed orchestration (ECS/EKS on Fargate) vs. zero-infra (Lambda, App Runner).
>    * **Scaling Characteristics:**
>      – Fine-grained, per-request scaling (Lambda) vs. pod/task-level scaling (ECS/EKS) vs. instance-level autoscaling (EC2).
>    * **Cost Profile:**
>      – Pay-per-invocation with no idle (Lambda) vs. pay-for-vCPU/memory seconds (Fargate) vs. reserved or spot pricing on EC2.
>    * **Startup/Cold-Start:**
>      – Function cold starts (Lambda) vs. warm container startup times vs. always-on EC2 instances.
>    * **Workload Nature:**
>      – Short-lived, event-driven functions vs. long-running background services or stateful workloads.
>    * **Ecosystem & Integration:**
>      – Need for service mesh (App Mesh), sidecars, complex networking (VPC, ENIs), or heavy OS-level customization.
> 3. **Recommendation & Justification:**
>
>    * **Implementation:**
>
>      * Deploy **stateless, user-facing microservices** (product catalog, user sessions) on **AWS Lambda** behind **API Gateway** to achieve instant, zero-ops scaling and pay-per-use billing.
>      * Host **containerized batch jobs** or services requiring custom dependencies (image processing, analytics) on **AWS Fargate** with **ECS**, removing the need to manage EC2 instances while supporting Docker workloads.
>      * Use **Elastic Beanstalk** only for legacy or monolithic apps that cannot easily be refactored into microservices, leveraging its managed platform model to simplify deployment.
>    * **Operational Setup & Automation:**
>
>      * Configure **provisioned concurrency** for latency-sensitive Lambda functions to eliminate cold starts during flash sale events.
>      * Define **ECS Service Auto Scaling** policies based on CPU, memory, and custom application metrics via CloudWatch for Fargate tasks.
>      * Integrate all build/test/deploy steps into your existing **CI/CD pipeline** (e.g., AWS CodePipeline with CodeBuild or GitHub Actions) to automate Docker image builds and Lambda deployments.
>      * Leverage **AWS X-Ray** and **CloudWatch Container Insights** for distributed tracing and end-to-end observability across both serverless and container services.
>      * Implement least-privilege **IAM roles for each service**, and store secrets in **AWS Secrets Manager** or **Parameter Store** to centralize credential management.
>      * Adopt **AWS App Mesh** where cross-service traffic control, retries, and circuit breaking are required, especially for container-based services.
>
> *Use this scenario to assess the candidate’s ability to probe requirements, weigh trade-offs across compute options, and justify a hybrid architecture that balances agility, cost, and operational simplicity.*
