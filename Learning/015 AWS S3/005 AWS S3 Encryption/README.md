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

   #### b. **SSE-KMS (Server-Side Encryption with AWS KMS-Managed Keys)**:
   - AWS Key Management Service (KMS) is used to manage the encryption keys.
   - You have more control over who can access and manage the encryption keys.
   - Offers additional security through audit logs, key rotation, and granular permissions via AWS IAM.
   
   **Use Case**: Suitable when you need more control over key management, auditing, and permissions, while still wanting AWS to handle most of the encryption and decryption process.

   #### c. **SSE-C (Server-Side Encryption with Customer-Provided Keys)**:
   - You provide your own encryption keys, and AWS S3 uses these keys to encrypt the data.
   - AWS does not store the encryption keys you provide. Instead, it uses the key for the encryption process and then discards it.
   - You must provide the same key when retrieving the encrypted data.
   
   **Use Case**: Best when you want full control of encryption keys, ensuring AWS never has access to them.

### 2. **CSE (Client-Side Encryption)**:
   **Client-Side Encryption (CSE)** involves encrypting the data on the client side (before it is sent to AWS) and decrypting it on the client side as well. In this case, AWS stores only the encrypted data, and the key never touches AWS infrastructure.

   There are two common scenarios for client-side encryption:

   #### a. **CSE with AWS KMS-Managed Keys**:
   - The client retrieves a data encryption key (DEK) from AWS KMS.
   - The client uses this key to encrypt the data before sending it to S3.
   - The encrypted data is stored in S3, and the key is managed securely by AWS KMS.
   
   **Use Case**: Used when you want to encrypt data on the client side but still leverage AWS KMS for managing keys and access control.

   #### b. **CSE with Customer-Provided Keys**:
   - You use your own encryption libraries to encrypt the data before sending it to AWS (for example, Amazon S3).
   - The client manages the encryption keys and process entirely outside of AWS.
   - The data stored in AWS is already encrypted, and you control the decryption process.
   
   **Use Case**: Ideal when you want full control over encryption and decryption, and you prefer to handle key management and encryption processes independently of AWS.
