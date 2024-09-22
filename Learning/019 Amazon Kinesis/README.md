# Amazon Kinesis

`Amazon Kinesis` is a platform provided by AWS for real-time data streaming and processing. It enables to collect, process, and analyze large streams of data in real time, allowing applications to react quickly to new data.

### Key Components of Amazon Kinesis:
1. **Kinesis Data Streams (KDS):** 
2. **Kinesis Data Firehose:** 
3. **Kinesis Data Analytics:**
4. **Kinesis Video Streams:**

## Amazon Kinesis Services Comparison

| Feature/Service                    | **Kinesis Data Streams (KDS)**                                      | **Kinesis Data Firehose**                                         | **Kinesis Data Analytics**                                    | **Kinesis Video Streams**                                      |
|-------------------------------------|---------------------------------------------------------------------|------------------------------------------------------------------|---------------------------------------------------------------|----------------------------------------------------------------|
| **Primary Use Case**                | Real-time data ingestion and processing.                            | Reliable delivery of streaming data to AWS destinations.          | Real-time data analysis using SQL.                             | Real-time video ingestion, processing, and storage.            |
| **Data Type**                       | Text, logs, events, JSON, binary, etc.                              | Text, logs, JSON, CSV, metrics, etc.                              | Streams from Kinesis Data Streams or Firehose                  | Video streams (live or archived video).                        |
| **Ingestion**                       | Producers send data to streams using APIs, SDKs, etc.               | Producers send data directly to Firehose (auto-scaling).          | Ingest data from Kinesis Data Streams or Firehose              | Capture video from connected devices like cameras, drones, etc.|
| **Data Delivery**                   | Custom applications (consumers) read from streams in real-time.     | Delivered to destinations like S3, Redshift, Elasticsearch, Splunk.| Sends output back to Kinesis or delivers results to S3, Redshift| Delivered to storage (S3), analyzed using ML models, etc.       |
| **Scaling**                         | Manual scaling by adjusting shards.                                 | Automatic scaling based on data throughput.                       | Automatically scales based on incoming data volume.            | Automatically scales to support large video streams.           |
| **Data Retention**                  | 24 hours to 7 days (default 24 hours).                              | Data is immediately delivered and not retained.                   | Short-term processing in memory, no retention.                 | Up to 1 year with HLS/DASH or custom retention periods.         |
| **Processing Method**               | Custom applications (e.g., EC2, Lambda) process stream data in real-time.| Firehose delivers data to AWS services with optional Lambda transformation.| SQL-based analysis on real-time data streams.                   | Custom applications (e.g., Lambda) or AWS services process the video data.|
| **Transformation**                  | Managed by custom consumer applications.                            | Supports Lambda-based transformations before delivery.            | SQL queries for aggregation, filtering, and enrichment.        | Use custom apps or ML models for analysis.                     |
| **Delivery Destinations**           | Consumer apps, AWS Lambda, S3, Redshift, EMR, etc.                  | S3, Redshift, Elasticsearch, Splunk, or custom HTTP endpoints.    | S3, Redshift, Kinesis Streams, or Firehose.                    | Amazon S3, other AWS services, or custom applications.          |
| **Cost Model**                      | Pay per shard (for throughput capacity).                            | Pay per GB of data ingested and delivered.                        | Pay for the amount of input data processed and analysis time.  | Pay per GB of data ingested, stored, and processed.            |
| **Use Cases**                       | Real-time analytics, IoT data processing, log and event processing. | Log delivery, metric monitoring, data lake ingestion, batch analytics. | Real-time fraud detection, IoT analytics, monitoring dashboards.| Security camera video processing, live video streaming, video analytics.|
| **Management Complexity**           | Requires management of shards and consumer applications.            | Fully managed, no infrastructure to manage.                      | Fully managed with SQL-based interface.                        | Fully managed, requires integration with video capture devices.|
| **Latency**                         | Low-latency data processing in near real-time.                      | Low latency, designed for near real-time delivery.                | Real-time processing with sub-second latency.                  | Sub-second to multi-second latency for live video.             |
| **Data Ordering**                   | Supports ordering per partition key within a shard.                 | No guaranteed ordering.                                           | Not applicable (depends on data stream source).                | Supports ordering of video frames.                             |
| **Error Handling & Retries**        | Custom logic needed for error handling and retries.                 | Built-in retry and error handling mechanisms.                     | Built-in error handling based on query logic.                  | Handles retry for video ingestion and processing failures.      |

### Amazon Kinesis Use Cases:
- **Real-time analytics**: Processing financial transactions, real-time monitoring of IoT data.
- **Application and system monitoring**: Collecting and analyzing logs in real time.
- **Machine learning and AI**: Streaming data for real-time model predictions.
- **Video streaming**: Analyzing live video data for media applications or security systems.

Kinesis is widely used in scenarios where real-time data flow and decision-making are essential.