# Multi-Region Failover for a Web Application

> **Scenario:**
> A social-media startup must design a high-availability web tier that survives an entire AWS region outage with under 60 seconds of failover.
>
> **1. Clarifying Questions**
>
> * Which components are stateful (databases, caches)?
> * What RTO/RPO targets apply for each tier (web, app, DB)?
> * Are any data-residency or latency constraints per region?
>
> **2. Decision Criteria**
>
> * DNS-based failover (Route 53 health checks, latency vs. geo policies)
> * Cross-Region replication (DynamoDB global tables or Aurora Global DB)
> * Session management (stateless tokens vs. Redis replication)
>
> **3. Recommendation & Justification**
>
> * Step-by-step failover plan: DNS switch, record TTLs, health checks
> * Data replication strategy and consistency trade-offs
> * Load-testing and run-book automation (Route 53, Lambda)

---
