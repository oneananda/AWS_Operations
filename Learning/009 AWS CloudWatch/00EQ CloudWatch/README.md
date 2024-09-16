# AWS CloudWatch Exam Questions

### Question 1:
**Which of the following statements about AWS CloudWatch Logs Insights is NOT true?**

- A) CloudWatch Logs Insights allows you to query and analyze log data stored in CloudWatch Logs.
- B) Logs Insights automatically scales with the size of the data and query load.
- C) You can use Logs Insights to create alarms based directly on the query results.
- D) Logs Insights charges you based on the volume of data scanned by your queries.

**Right Answer:**
C) You can use Logs Insights to create alarms based directly on the query results.

**Why Not Other Answers Fit:**
- **A) True**: CloudWatch Logs Insights does indeed allow you to query and analyze log data, making it a powerful tool for troubleshooting and operational insights.
- **B) True**: Logs Insights automatically scales to handle the data size and query load without manual intervention.
- **D) True**: Logs Insights charges based on the volume of data scanned by your queries, which is a key cost consideration when using the service.
  
**Explanation for C**: Logs Insights cannot directly create alarms based on query results. To set alarms, you need to export the query results to CloudWatch metrics and then create alarms on those metrics.

---

### Question 2:
**What is the maximum number of CloudWatch Dashboards you can create per AWS account per region by default?**

- A) 50
- B) 100
- C) 200
- D) 500

**Right Answer:**
B) 100

**Why Not Other Answers Fit:**
- **A) Incorrect**: The limit of 50 dashboards is lower than the actual default limit.
- **C) Incorrect**: 200 dashboards exceed the actual default limit of 100.
- **D) Incorrect**: 500 dashboards greatly exceed the actual default limit and require a service limit increase request.

**Explanation for B**: The default limit is 100 CloudWatch Dashboards per AWS account per region, which can be increased by requesting a service limit adjustment from AWS.

---


