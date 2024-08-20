# Amazon EC2 Instance Types

`Amazon EC2 Instances` are categorized based on performance characteristics and appropriate use cases.

The following are the instance types `based on the performance`

## General Purpose

- `Balances computing, memory and networking resources`
- Suitable for variety of workloads
- T-Family instances offer burstable performance by utilizing CPU credits
- Once CPU credits exhausted then the bursting capabilities are disabled, until more credits are earned


## General Purpose - EC2 Instance Type and Server Purposes

| EC2 Instance Types | Web Servers | Application Servers | Small to Medium Databases | Development and Test Environments | Microservices | Gaming Applications | Caching Servers |
|--------------------|-------------|---------------------|---------------------------|-----------------------------------|---------------|---------------------|-----------------|
| **General Purpose** | Suitable for balanced mix of compute, memory, and networking | Suitable for backend applications which handle non-heavy compute, memory, and networking | Applicable where computing and memory are not heavily used | Suitable for balanced SDLC life cycle managing | Suitable, but balanced | Suitable, but balanced | Suitable, but balanced |


## Compute optimized

- Ideal for compute-bound applications which needs `high-performance processors`


## Compute optimized - EC2 Instance Type and Server Purposes

| EC2 Instance Types  | Batch Processing Workloads                                   | High Performance Web Servers                                  | Media Transcoding                                              | High Performance Computing (HPC)                                             | Gaming Servers                   | Ad Server Engines         | Machine Learning Inference  | Scientific Modeling and Simulation  |
|---------------------|--------------------------------------------------------------|----------------------------------------------------------------|----------------------------------------------------------------|-------------------------------------------------------------------------------|----------------------------------|---------------------------|-----------------------------|------------------------------------|
| **Compute Optimized** | Suitable for applications that use significant computational power | For servers that handle high traffic and require strong performance | Suitable for media encoding and transcoding tasks for video and audio processing | Ideal for scientific modeling, simulations, and other HPC workloads that demand high processing power | Suitable for multiple players, high performance | For real-time ad-serving servers | Requires rapid computation | Suitable for complex simulations |


## Memory optimized - EC2 Instance Type and Server Purposes


| EC2 Instance Types | In-Memory Databases | Real-time Big Data Analytics | High-Performance Computing (HPC) for Genomics | In-Memory Caching | Large-scale Enterprise Applications | Machine Learning and AI Model Training |
|--------------------|---------------------|-----------------------------|----------------------------------------------|-------------------|------------------------------------|----------------------------------------|
| **Memory Optimized**   | Running in-memory databases like Redis, Memcached, or SAP HANA that require high memory capacity and low latency to store and process large data sets in memory. | Performing real-time analytics on large datasets using tools like Apache Spark or Hadoop, where processing speed is crucial, and large memory resources are required to keep data in memory. | Analyzing genetic data in fields like bioinformatics, where processing large-scale DNA sequencing data in memory is necessary for quick analysis. | Implementing large-scale in-memory caches that store and serve frequently accessed data, reducing access times and improving application performance. | Running memory-intensive enterprise applications such as SAP ERP or Oracle databases that need substantial memory to maintain performance under heavy workloads. | Training machine learning models on large datasets that need to be loaded into memory for faster processing, particularly for deep learning algorithms. |
