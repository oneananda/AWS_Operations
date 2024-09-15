# AWS WAF exam questions 

## Along with misleading options:

### 1. **Scenario-Based Protection:**
   - **Question:** Imagine you have a web application that’s getting a lot of suspicious traffic from specific countries. How would you use AWS WAF to block or manage this traffic? What steps would you take?
   - **Answer:** You would create a Web ACL (Access Control List) and add a geo-match condition to block requests from the specific countries you suspect. Then, associate this Web ACL with your application.
   - **Misleading Options:**
     - Block IP addresses manually using AWS Shield (AWS Shield doesn't handle specific geo-blocking; it’s for DDoS protection).
     - Use AWS Lambda to filter traffic based on countries (This is overcomplicated and not a direct feature of Lambda).

### 2. **Understanding Managed Rules:**
   - **Question:** AWS WAF offers managed rules that are like pre-set security rules you can use. If you were setting up WAF for the first time, why might you choose these managed rules, and how would they make your life easier?
   - **Answer:** Managed rules save time and effort as they are created by AWS security experts and cover common vulnerabilities, such as SQL injection and cross-site scripting. They are ready to use and updated regularly to address new threats.
   - **Misleading Options:**
     - Managed rules are free and don’t affect your AWS costs (Managed rules do have associated costs).
     - Managed rules allow you to control every aspect of traffic filtering in detail (They are general-purpose and might not cover very specific needs).

### 3. **Rate-Based Rules:**
   - **Question:** Your application is suddenly getting a flood of requests from a single IP address, which you suspect might be a denial-of-service attack. How could AWS WAF’s rate-based rules help you handle this situation without blocking legitimate traffic?
   - **Answer:** You can set up a rate-based rule that blocks requests from any IP that exceeds a specified request rate per 5-minute period. This helps prevent abuse while allowing normal traffic to pass through.
   - **Misleading Options:**
     - Rate-based rules block all traffic from any IP that sends requests (They only block once a rate limit is exceeded).
     - AWS WAF rate-based rules automatically learn normal traffic rates (You must specify the rate limits).

### 4. **Custom Rules Creation:**
   - **Question:** Suppose your application is vulnerable to SQL injection attacks. How would you create a custom rule in AWS WAF to specifically block SQL injection attempts? What conditions would you set?
   - **Answer:** You would create a custom rule using AWS WAF’s built-in SQL injection match condition, specifying the parts of the request (like the query string or headers) to inspect for patterns that match SQL injection attempts.
   - **Misleading Options:**
     - Use regex patterns manually to detect SQL injections (While possible, this is unnecessary with AWS’s built-in conditions).
     - Set a rate-based rule to handle SQL injections (Rate-based rules are not designed for specific attack patterns like SQL injection).

### 5. **Integration with AWS Services:**
   - **Question:** You want to secure your API that’s hosted on AWS API Gateway. How would you integrate AWS WAF to add an extra layer of security? What benefits would this integration bring?
   - **Answer:** You would associate a Web ACL with your API Gateway. This integration allows AWS WAF to inspect incoming requests and block or allow them based on the rules defined in the Web ACL, adding protection against common web attacks.
   - **Misleading Options:**
     - AWS WAF can only be integrated with CloudFront (It also integrates with ALB, API Gateway, and others).
     - Integration with WAF requires changes to your API code (No code changes are needed; it’s managed through AWS settings).

### 6. **Monitoring and Alerts:**
   - **Question:** After setting up AWS WAF, you want to monitor how it’s performing and get alerts for any suspicious activity. How can you use AWS services like CloudWatch to keep an eye on WAF’s activity?
   - **Answer:** You can enable AWS WAF logging to send data to CloudWatch Logs, and set up CloudWatch metrics and alarms to track metrics such as blocked requests or rule matches, providing visibility and alerting on unusual activities.
   - **Misleading Options:**
     - Use AWS Config for real-time monitoring of WAF rules (AWS Config tracks configuration changes, not traffic monitoring).
     - AWS WAF logs are automatically stored and alerted through SNS (You need to set up log storage and alerts manually).

### 7. **Cost Management:**
   - **Question:** AWS WAF operates on a pay-as-you-go model. If you were managing a large-scale application, how would you keep your WAF costs under control while still maintaining a strong security posture?
   - **Answer:** Optimize rules by using only what’s necessary, avoid overly broad conditions that may trigger excessive logging, and regularly review and refine your Web ACLs to minimize the number of rules and requests being inspected.
   - **Misleading Options:**
     - Use a single Web ACL for all applications to reduce costs (This can complicate rule management and impact performance).
     - Disabling logging will significantly reduce WAF costs (Logging is optional and separate from WAF inspection costs).

### 8. **Bot Control:**
   - **Question:** Your website is being overwhelmed by bot traffic, affecting performance for real users. How would you use AWS WAF’s bot control features to differentiate between good bots (like search engine crawlers) and bad bots, and manage them accordingly?
   - **Answer:** AWS WAF’s Bot Control feature allows you to set rules to allow known good bots while blocking or challenging unknown or bad bots using CAPTCHA or blocking conditions. You can use managed rule groups for bots to simplify this process.
   - **Misleading Options:**
     - Block all bot traffic to solve the issue (This would block beneficial bots as well, impacting SEO and other services).
     - Rely solely on CloudFront caching to manage bot traffic (Caching helps with performance, but doesn’t directly address bad bots).

### 9. **Web ACLs (Access Control Lists):**
   - **Question:** You’ve been asked to set up Web ACLs in AWS WAF for a new project. What are Web ACLs, and how would you go about configuring them to ensure the right traffic gets through and harmful traffic is blocked?
   - **Answer:** A Web ACL is a collection of rules that you configure to allow or block incoming traffic based on specified conditions. To set it up, you create rules that match harmful patterns (like SQL injection or XSS), apply rate limits, and then associate the Web ACL with your application resources.
   - **Misleading Options:**
     - Web ACLs are only used for blocking traffic (They can also allow and monitor traffic).
     - You must set up Web ACLs on each AWS service individually (You associate a Web ACL once per resource, not repeatedly for each rule).

### 10. **Troubleshooting and Optimization:**
   - **Question:** If your AWS WAF setup is blocking legitimate user requests, how would you troubleshoot and adjust your rules to reduce false positives without compromising security?
   - **Answer:** Start by reviewing the logs to identify which rules are causing the false positives. Adjust the conditions or scoring of those specific rules, or use the count action to monitor how changes would impact traffic before fully deploying them.
   - **Misleading Options:**
     - Disable all rules and add them back one by one (This disrupts security and is time-consuming).
     - Increase the thresholds for all rules globally to avoid blocking (This could let actual threats through).

### Question 11
**Question:** Your web application is experiencing frequent SQL injection attacks. Which AWS WAF rule type would be most appropriate to address this issue?

**Options:**
- A) Rate-based rule
- B) SQL injection match condition
- C) Geo-match condition
- D) String match condition

**Answer:** B) SQL injection match condition

**Explanation on right answer:**  
SQL injection match conditions are specifically designed to detect and block SQL injection attempts by analyzing request patterns that match SQL syntax.

**Explanation on why the other options are not correct:**  
- **A) Rate-based rule:** This rule limits the number of requests from a single source but does not specifically target SQL injection patterns.  
- **C) Geo-match condition:** This rule blocks requests based on geographic location and is unrelated to SQL injection.  
- **D) String match condition:** While it can identify specific strings, it is not specialized for SQL injection patterns and may miss more sophisticated attacks.

---
