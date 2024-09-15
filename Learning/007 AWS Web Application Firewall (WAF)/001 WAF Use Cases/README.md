# AWS Web Application Firewall (WAF) Use Cases

## Use case # 1

**Multi-Tenancy Management in SaaS Applications with AWS WAF**

Concept: In multi-tenant `SaaS (Software-as-a-Service)` applications, multiple customers (tenants) share the same application and infrastructure, but each expects their own isolated environment for security and customization. With AWS WAF, you can create separate Web ACLs (Access Control Lists) for each tenant, allowing you to apply specific security rules for each one without their settings affecting others. This makes it easier to handle security centrally while providing tailored protection based on individual needs.

**Explaination with example:**

Suppose we are having 2 clients for our SaaS application from differnt domains,

`Client 1` from financial services
`Client 2` from e-commerce site

### Step 1 : Customizing as per needs

We can customize the Security Per Tenant as below

For each tenant, we can set up a dedicated `Web ACL (Access Control Lists)` in AWS WAF that matches their specific requirements:

**For Financial Services:** The Web ACL can include rules against SQL injections, cross-site scripting (XSS), and rate-based rules to control traffic to critical endpoints like login or account pages.
**For E-commerce:** This tenant’s Web ACL might focus more on bot control to block malicious bots from scraping data or attempting fraudulent transactions, and also have rules for common vulnerabilities.

### Step 2 : Managing in a centralized place

We can monitor, change, update the ACLs from a single place for all the tenents.

### Step 3 : Monitoring & Reporting

We can attach AWS CloudWatch to get the insights of traffic threats and set alarams accordingly.


### Step 4 : Automation 

- We can automate the creation of Web ACLs by connecting AWS WAF with SDKs, CloudFormation, for example, if any new tenent is signing up the default ACLs will be created accordinly using this combination.- 
- AWS Lambda can also be used to automate dynamic changes, like adding an IP address to a block list when suspicious activity is detected.



---

