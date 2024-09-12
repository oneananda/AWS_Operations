# AWS Terminologies

**SSL Termination**

This is a process of decrypting the SSL (Secure Sockets Layer) or TLS (Transport Layer Security) data before sending the data to application layer,

This is typically done to offload the decryption process from the backend servers, which is improving performance.

**Sticky sessions**

A user’s requests are always routed to the same server during their session.

This will be useful when the application stores session data on the server, such as in-memory caches, and it’s crucial that the user consistently interacts with the same server to maintain their session state.

**CPU Burst**

For Lambda, sometimes we need the function to do more processing than it acutually can do.

**End-to-End Encryption (E2E)** 

E2E encryption ensures that data remains encrypted from the client's browser to the backend application server. This prevents any intermediary, including load balancers, from reading the data, fully preserving data confidentiality.

	Note: SSL Termination is directly propotional to E2E Encryption.

**Cross-Zone Load Balancing**

ALB has cross-zone load balancing enabled by default, which allows it to distribute incoming traffic evenly across all registered targets in different Availability Zones.

**Elastic IP Address (EIP)**

An Elastic IP address is a static, public IPv4 address that you can allocate to your AWS account. You can associate an Elastic IP with an EC2 instance

**Bastion Server**

A bastion server, also known as a jump box, used to connect to a private resources from the box.

**SSH (Secure Shell)**

SSH, or Secure Shell, is like a secure, digital key that lets you safely connect to and control a computer or server over the internet. Imagine it as a private, encrypted tunnel that you create between your computer and another device, allowing you to send commands, transfer files, or manage that device remotely without anyone being able to eavesdrop.

It's commonly used by developers and system administrators to securely access servers, troubleshoot issues, or manage web applications. SSH ensures that everything you do during this connection, including your login credentials and the commands you type, is kept private and secure from hackers or prying eyes.