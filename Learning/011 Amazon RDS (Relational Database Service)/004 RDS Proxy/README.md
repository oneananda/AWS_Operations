# RDS Proxy

RDS Proxy is designed to handle connection pooling and manage database connections efficiently, especially for serverless applications like Lambda that can rapidly scale. It reduces the load on the database by managing and reusing connections, making it an ideal solution to handle traffic spikes and reduce timeouts with minimal code changes.

Enabling RDS Proxy is the most cost-effective and minimal-impact solution, as it allows the application to handle more concurrent connections without modifying the database or application significantly.

###  Supported Database Engines

Currently, RDS Proxy supports MySQL, MariaDB, PostgreSQL, and Amazon Aurora (MySQL and PostgreSQL compatible).


