# **Load Balancers**

> **Scenario:**
> A client’s application is experiencing significant traffic spikes every day between 12:00 PM and 2:00 PM, leading to intermittent slowdowns and errors. They currently have no load balancer in front of their fleet of EC2 instances.
>
> **Question:**
> As the AWS Solutions Architect brought in to diagnose and remediate this issue…
>
> 1. **Clarifying Questions:**
>
>    * What information would you gather from the client to understand the nature of these spikes?
>    * Which metrics and logs would you request, and why?
>    * What do you need to know about their traffic patterns, protocol requirements, and application architecture?
> 2. **Decision Criteria:**
>
>    * What factors would you consider when choosing between an Application Load Balancer (ALB), a Network Load Balancer (NLB), or a Classic Load Balancer (CLB)?
>    * How would protocol support (HTTP/HTTPS vs. TCP/UDP), performance characteristics (low latency, high throughput), and feature needs (path-based routing, SSL termination, IP address preservation) influence your choice?
>    * Under what circumstances might you recommend stickiness or cross-zone load balancing?
> 3. **Recommendation & Justification:**
>
>    * Based on the gathered data and your criteria, which load balancer would you implement?
>
>    * What configuration settings (target groups, health checks, auto-scaling integration, TLS policies) would you apply to ensure reliability during peak load?
>
> *Use this scenario to evaluate the candidate’s ability to ask incisive questions, articulate the distinguishing features of AWS load balancers, and justify a clear, data-driven recommendation.*


