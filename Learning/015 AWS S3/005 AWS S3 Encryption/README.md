# AWS S3 Encryption

**SSE** (Server-Side Encryption) and **CSE** (Client-Side Encryption) are two methods for encrypting data, particularly when dealing with storage services like Amazon S3. 

### 1. **SSE (Server-Side Encryption)**:
   **Server-Side Encryption (SSE)** refers to encryption that is performed on the server side before the data is stored. AWS handles the encryption, key management, and decryption process, simplifying encryption for the user.

   AWS provides three options for SSE in Amazon S3:
   
   #### a. **SSE-S3 (Server-Side Encryption with S3-Managed Keys)**:
   - AWS automatically manages the encryption keys for you.
   - Your data is encrypted using a unique key and AES-256 encryption (Advanced Encryption Standard with 256-bit keys).
   - Amazon S3 takes care of both the key management and encryption process without any customer involvement.
   
   **Use Case**: Ideal when you want to encrypt data without managing your own keys, and you trust AWS to manage the entire process.
