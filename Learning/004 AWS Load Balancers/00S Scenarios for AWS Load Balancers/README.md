# Scenarios for AWS Load Balancers

### **Question: 1**

*"I have multiple web applications hosted on AWS, each with its own SSL certificate. If I decide to use a single Application Load Balancer (ALB) for all these applications, how can I manage the different SSL certificates for each application, and will it still work efficiently?"*

### **Answer:**

If you have one SSL certificate for each of your applications and you decide to use a single ALB, you can still accommodate all SSL certificates using the ALB's ability to handle multiple certificates via Server Name Indication (SNI).

### How to Fit Multiple SSL Certificates with a Single ALB:

1. **Use of SNI (Server Name Indication):**
   - SNI allows the ALB to serve multiple SSL certificates on the same listener. This means you can have different SSL certificates for each application, and the ALB will present the correct certificate based on the hostname in the incoming request.
   - To configure this, add multiple certificates to the ALB listener, and the ALB will automatically choose the correct certificate for the domain name requested by the client.

2. **Steps to Configure Multiple SSL Certificates on a Single ALB:**
   - **Step 1:** Navigate to the AWS Management Console and go to the ALB configuration.
   - **Step 2:** Select the listener (usually on port 443 for HTTPS) and choose to edit the listener settings.
   - **Step 3:** Add a rule to forward traffic to the appropriate target group based on conditions like host-based routing (e.g., `app1.example.com`, `app2.example.com`).
   - **Step 4:** Under the SSL certificate section, you can add multiple certificates. Ensure each certificate is correctly associated with the domain name of the corresponding application.
   - **Step 5:** Ensure SNI is enabled for the listener. ALBs support SNI by default, so this will allow the ALB to select the appropriate certificate based on the request’s hostname.

3. **Example Scenario:**
   - Suppose you have the following applications:
     - **App1:** `app1.example.com` with its own SSL certificate.
     - **App2:** `app2.example.com` with its own SSL certificate.
     - **App3:** `app3.example.com` with its own SSL certificate.
   - Configure the ALB with listener rules that match the hostname (e.g., `Host is app1.example.com`) and route traffic to the corresponding target group.
   - Attach the appropriate SSL certificate for each domain. The ALB will handle the selection of the correct certificate using SNI.

4. **Benefits:**
   - **Cost Savings:** You save on ALB costs by using a single ALB instead of multiple ones.
   - **Simplified Management:** Centralized management of SSL certificates in one ALB.
   - **Scalability:** ALB scales to handle incoming requests and select the right SSL certificate automatically.

This setup allows you to efficiently manage SSL certificates for multiple applications while benefiting from the cost-effectiveness of a single ALB.

---
