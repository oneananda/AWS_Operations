# Amazon Kinesis Data Analytics

`Amazon Kinesis Data Analytics` is a fully managed service that allows to process and analyze real-time streaming data using SQL, Java, or Scala. It provides a simple way to build stream processing applications that can run on data ingested by Amazon Kinesis Data Streams or Kinesis Data Firehose.

### Example Scenario:

Imagine you are running an e-commerce website and you want to track user activity in real time. You can use **Kinesis Data Streams** to collect clickstream data from the site. Then, with **Kinesis Data Analytics**, you can run real-time SQL queries to analyze user behavior, detect anomalies, and feed that data into a dashboard for live monitoring. If an abnormal spike in failed transactions is detected, you can trigger a Lambda function to alert your operations team immediately.

### Advantages:
- **Ease of Use with SQL**: Familiar SQL-based querying makes it accessible to non-developers.
- **Real-Time Insights**: Analyze streaming data in real time without storing it first.
- **Low Latency**: Sub-second processing and analysis for low-latency use cases.
- **Automatic Scaling**: Handles scaling based on the volume of incoming data.
- **Supports Complex Stream Processing**: Apache Flink support for advanced use cases.


### Amazon Kinesis Data Analytics - Realtime Example

#### Data stream record

```
{
  "device_id": "sensor123",
  "temperature": 27.5,
  "timestamp": "2024-09-22T08:00:00Z"
}
```

#### SQL Query

```
SELECT
  device_id,
  temperature,
FROM "SOURCE_SQL_STREAM"
```