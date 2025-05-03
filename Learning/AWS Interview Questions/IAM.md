# **Temporary Contractor Access**

> **Scenario:**
> The client engages contractors frequently but does **not** want to create long-lived IAM users. Instead, contractors should gain access to specific AWS resources for a fixed 90-day engagement, after which all access is automatically revoked.
>
> **Question:**
> As the AWS Solutions Architect brought in to design and implement this temporary access solution…
>
>   1. **Clarifying Questions:**
>
>      * Which external identity provider (e.g., Okta, Azure AD, Google Workspace) or SAML/OIDC system will authenticate and federate contractor access?
>      * What exact AWS accounts, IAM roles, and permission scopes do contractors need (e.g., read-only S3, assume-role in a dev sandbox, API access)?
>      * What upstream system or event (HR database, ticketing tool, SCIM) will trigger the “start” and “end” of the 90-day access window, and what SLA applies to immediate revocation?
>
>   2. **Decision Criteria:**
>
>      * **Federation vs. short-lived credentials:** AWS IAM Identity Center (with SCIM provisioning) vs. direct SAML/OIDC federation + STS assume-role.
>      * **Permission management:** Use of AWS SSO Permission Sets vs. managing custom IAM roles and policies.
>      * **Session control:** Desired session duration (1–12 hours) and enforced re-authentication/MFA vs. issuing static credentials or long-lived tokens.
>      * **Automated deprovisioning:** EventBridge-driven Lambda checks vs. IdP-driven SCIM attribute expiry vs. scheduled scripts.
>      * **Notification & auditing:** SNS (email/Slack) vs. CloudWatch Events for lifecycle notifications, and CloudTrail/AWS Config for compliance checks.
>
>   3. **Recommendation & Justification:**
>
>      * **Implementation:**
>
>        * Connect the client’s IdP to **AWS IAM Identity Center** via SAML/OIDC and enable the **SCIM connector** so contractor accounts import automatically—eliminating manual IAM user creation.
>        * Define **Permission Sets** for the exact resource permissions contractors require. Configure each to enforce MFA and set a session duration (e.g., 12 hours) to force daily re-authentication.
>      * **Lifecycle automation & configuration:**
>
>        * In the IdP or HR integration, assign contractors a SCIM attribute `endDate=YYYY-MM-DD`.
>        * Schedule an **EventBridge** rule (daily) that triggers a **Lambda** function to scan AWS SSO for expired contractors and **deprovision** (disable) their access immediately.
>        * Send provisioning, upcoming-expiry (e.g., 7 days prior), and deprovisioning alerts to an **SNS** topic integrated with email or Slack.
>        * Enable **CloudTrail** for all `AssumeRole` and console-login events and enforce an AWS Config rule to detect any stale or orphaned principals.

*Use this scenario to evaluate the candidate’s ability to ask incisive questions, articulate the distinguishing features of AWS federation and SSO for temporary access, and justify a clear, data-driven recommendation.*
