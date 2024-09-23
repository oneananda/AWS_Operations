# AWS S3 Secure Access

We can secure the AWS S3 in various methods,

- **Bucket Policies**: Resource-based rules that define who can access an S3 bucket and what actions they can perform.
- **Access Control Lists (ACLs)**: Object- and bucket-level permissions used to control access to S3 resources for specific users or groups.
- **IAM Policies**: User- or role-based permissions that control what actions specific users or roles can perform on S3.
- **S3 Block Public Access**: A setting to block all public access to buckets and objects, ensuring no unintentional exposure.
- **Pre-Signed URLs**: Temporary, time-limited URLs that provide secure access to private S3 objects.
- **Server-Side Encryption**: Automatically encrypts objects stored in S3 to protect data at rest using managed or customer-provided keys.
- **VPC Endpoint for S3**: A private connection between a VPC and S3, allowing access without using the public internet.
- **Cross-Origin Resource Sharing (CORS)**: Controls how your S3 resources can be accessed from different domains, preventing unauthorized cross-origin requests.
- **CloudFront with Signed URLs or Signed Cookies**: Limits access to S3 content via CloudFront by using time-limited URLs or cookies for secure delivery.
- **S3 Object Lock**: Provides write-once-read-many (WORM) protection to prevent deletion or modification of objects for a set period.
- **Versioning**: Keeps multiple versions of an object to protect against accidental deletion or overwriting.