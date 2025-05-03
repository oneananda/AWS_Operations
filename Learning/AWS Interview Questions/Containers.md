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


# **Video Transcoding Pipeline**

> **Scenario:**
> A media‐streaming startup must build a scalable, cost-efficient video transcoding pipeline. Incoming raw video files (up to 10 GB each) land in S3 and must be encoded into multiple bitrates and formats (HLS, DASH) within 2 hours of upload. Peak ingestion can spike to hundreds of files per hour whenever new content is released. The team needs GPU acceleration for faster encoding, integration with S3 events, and end-to-end monitoring, but wants to avoid heavy cluster management.

> **Question:**
> As the AWS Solutions Architect brought in to design this transcoding workflow…

> 1. **Clarifying Questions:**
>
>    * What is the average and maximum size of uploaded video files, and what concurrency of parallel jobs do you expect during peak release windows?
>    * Which codecs, resolutions, and container formats are required (e.g., H.264 at 1080p, HEVC at 4K, VOD packaging)?
>    * Do you require GPU-accelerated instances, or is CPU-only encoding acceptable for lower resolutions?
>    * What SLAs apply to end-to-end processing time, and how critical is deterministic completion within that window?
>    * How much can you invest in reserved/spot capacity versus on-demand to optimize cost?

> 2. **Decision Criteria:**
>
>    * **Compute Environment:**
>      – **AWS Batch** (managed queue, supports GPU EC2/Spot), **ECS/EKS on Fargate + ECS GPU support**, or **EC2 Auto Scaling Group** with GPU instances vs. **Lambda** for small, short-lived tasks.
>    * **Scaling & Throughput:**
>      – Batch orchestration with job queuing and dependency handling vs. direct event-driven invocation.
>    * **Operational Overhead:**
>      – Fully managed job scheduling (AWS Batch) vs. container orchestration with ECS/EKS vs. self-managed EC2 clusters.
>    * **Cost Model:**
>      – Pay-per-vCPU/GPU-second (Batch/Fargate) vs. EC2 Reserved/Spot amortization vs. per-invocation (Lambda, though limited to 15 minutes).
>    * **Integration & Monitoring:**
>      – Native S3 event triggers and CloudWatch Metrics/Events vs. custom polling or Step Functions orchestration.

> 3. **Recommendation & Justification:**
>
>    * **Implementation:**
>
>      * Use **AWS Batch** with a **GPU-enabled Compute Environment** (mix of on-demand and Spot p3 or g4dn instances) to queue and run transcoding jobs at scale.
>      * Define **AWS Batch Job Definitions** that reference Docker images containing FFmpeg and your encoding presets.
>      * Configure an **S3 Event Notification** to publish to **SNS** or **EventBridge**, which then triggers a **Batch SubmitJob** Lambda to enqueue a new job per uploaded file.
>    * **Operational Setup & Automation:**
>
>      * Leverage **Spot Instance** capacity for non-critical, cost-sensitive encoding tasks, with fallback to on-demand if capacity is low.
>      * Use **AWS Step Functions** to orchestrate multi-step workflows (e.g., initial checksum, Batch job submission, media packaging via AWS Elemental MediaConvert, and final metadata write).
>      * Enable **CloudWatch Container Insights** and **Batch job metrics** to monitor GPU utilization, job runtimes, and failures.
>      * Set up **EventBridge rules** to trigger alerts on job failures or SLA breaches (e.g., > 2 hours runtime) and send notifications via **SNS** to the devops team.
>      * Store all encoding parameters and secrets (e.g., API keys for MediaConvert) in **AWS Secrets Manager** or **Systems Manager Parameter Store**, and grant least-privilege IAM roles to Batch compute environments.

*Use this scenario to assess the candidate’s ability to probe workload requirements, evaluate managed vs. self-managed compute options for GPU batch processing, and justify a design that balances cost, scale, and operational simplicity.*
