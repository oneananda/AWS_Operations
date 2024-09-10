# AWS Terminologies

**SSL Termination**

This is a process of decrypting the SSL (Secure Sockets Layer) or TLS (Transport Layer Security) data before sending the data to application layer,

This is typically done to offload the decryption process from the backend servers, which is improving performance.

**Sticky sessions**

A user�s requests are always routed to the same server during their session.

This will be useful when the application stores session data on the server, such as in-memory caches, and it�s crucial that the user consistently interacts with the same server to maintain their session state.
