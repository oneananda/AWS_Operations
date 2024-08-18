# Amazon EC2 Instance Types

Amazon EC2 Instance Types, this repo folder provides comprehensive related to Amazon EC2 Instance Types resources. 

## General Purpose

- Balances computing, memory and networking resources
- Suitable for variety of workloads
- T-Family instances offer burstable performance by utilyzing CPU credits
- Once CPU credits exhausted then the bursting capablities are disabled, until more credits are earned


## General Purpose - EC2 Instance Type and Server Purposes

| EC2 Instance Types | Web Servers | Application Servers | Small to Medium Databases | Development and Test Environments | Microservices | Gaming Applications | Caching Servers |
|--------------------|-------------|---------------------|---------------------------|-----------------------------------|---------------|---------------------|-----------------|
| **General Purpose** | Suitable for balanced mix of compute, memory, and networking | Suitable for backend applications which handle non-heavy compute, memory, and networking | Applicable where computing and memory are not heavily used | Suitable for balanced SDLC life cycle managing | Suitable, but balanced | Suitable, but balanced | Suitable, but balanced |


## Compute optimized

- Ideal for compute-bound applications which needs high-performance processors


## Compute optimized - EC2 Instance Type and Server Purposes

| EC2 Instance Types  | Batch Processing Workloads                                   | High Performance Web Servers                                  | Media Transcoding                                              | High Performance Computing (HPC)                                             | Gaming Servers                   | Ad Server Engines         | Machine Learning Inference  | Scientific Modeling and Simulation  |
|---------------------|--------------------------------------------------------------|----------------------------------------------------------------|----------------------------------------------------------------|-------------------------------------------------------------------------------|----------------------------------|---------------------------|-----------------------------|------------------------------------|
| **Compute Optimized** | Suitable for applications that use significant computational power | For servers that handle high traffic and require strong performance | Suitable for media encoding and transcoding tasks for video and audio processing | Ideal for scientific modeling, simulations, and other HPC workloads that demand high processing power | Suitable for multiple players, high performance | For real-time ad-serving servers | Requires rapid computation | Suitable for complex simulations |
