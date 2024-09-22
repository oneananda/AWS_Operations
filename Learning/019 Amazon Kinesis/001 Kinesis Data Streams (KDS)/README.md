# Kinesis Data Streams (KDS)

### Key Concepts of Kinesis Data Streams (KDS):

**Streams**

- Logical colletions of records, which is ordered by time and stored in 'Shards'.

**Shards**

- A shard is the unit of throughput in a Kinesis stream. Each shard provides a fixed capacity.

**Producers**

- The ones who produce the data, who are sending the data to Kinesis Stream.

**Consumers**

- The ones who consumes the data 
- Two types of consumers
  - Shared throughput consumers: Multiple consumers share the same read throughput.
  - Enhanced fan-out consumers: Each consumer has its own read throughput.

**Data Records**
- A data record consists of:
    - **Partition Key**: Determines how data is distributed across shards.
    - **Sequence Number**: A unique identifier for the record within a shard.
    - **Data Blob**: The actual data payload (can be any format, such as JSON, text, binary).
   
**Retention Period:**
   - By default, Kinesis Data Streams retains data for 24 hours, but this can be extended up to 7 days. This retention window allows consumers to reprocess data if needed.

### Use Cases for KDS:

**Real-time analytics:**
Analyze data as it arrives in the stream for trends, fraud detection, and log analytics.

**Log and event data collection:**
Collect and process logs from applications, databases, or system events.

**Metrics and monitoring:**
Stream monitoring data from applications or IoT devices for real-time insights.

**Machine learning applications:**
Capture data from various sources and feed it into machine learning models for real-time predictions.


