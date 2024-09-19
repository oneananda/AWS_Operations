# Amazon CloudFront Exam Assistance

- Security groups cannot be directly applied to Amazon CloudFront

### Questions incorporating this logic:

#### **Question**:

You are designing a content delivery solution using Amazon CloudFront to distribute media content globally. Your company has a requirement to restrict access to the media content so that only users from specific IP addresses can access it. Additionally, the content is stored in an S3 bucket, and you want to prevent direct access to the S3 bucket from the public internet.

Which of the following solutions would meet these requirements? (Choose TWO)

1. Attach a security group to the CloudFront distribution to restrict access to the specific IP addresses.
2. Use an **AWS WAF** to create a rule that allows requests only from the specific IP addresses.
3. Create a **VPC endpoint** for the S3 bucket and configure CloudFront to use this endpoint.
4. Enable **Origin Access Control (OAC)** or **Origin Access Identity (OAI)** to ensure that the S3 bucket can only be accessed through CloudFront.
5. Create a bucket policy that allows access from all IP addresses but restricts direct access from the internet.

**Answer**: 
- 2. Use an **AWS WAF** to create a rule that allows requests only from the specific IP addresses.
- 4. Enable **Origin Access Control (OAC)** or **Origin Access Identity (OAI)** to ensure that the S3 bucket can only be accessed through CloudFront.

### Explanation:
1. **Security groups** cannot be applied directly to CloudFront, so option 1 is incorrect.
2. **AWS WAF** allows you to create rules to filter traffic based on conditions such as IP addresses, making option 2 correct.
3. **VPC endpoints** are not relevant for CloudFront to access S3; CloudFront can access S3 directly without being in a VPC, so option 3 is incorrect.
4. **OAC or OAI** ensures that the S3 bucket can only be accessed by CloudFront and not directly from the internet, making option 4 correct.
5. A bucket policy that allows access from all IPs does not meet the security requirement to restrict access, so option 5 is incorrect.


