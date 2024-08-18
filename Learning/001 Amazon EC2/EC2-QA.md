# EC2 Questions & Answers - QA

### Storage and Data Management

#### What happens to the data on an EC2 instance store when the instance is stopped or terminated?

A. The data is automatically backed up to Amazon S3.
B. The data is persisted and available.
C. The data is lost.
D. The data is transferred to EBS.
	
#### Answer C:

Data on ephermal storage (instance store) `will be lost if the instance is terminated / stopped` but will not lost if the instance is restarted

#### What happens to the data on an EC2 instance store when the instance is restarted?

A. The data is automatically backed up to Amazon S3.
B. The data is persisted and available.
C. The data is lost.
D. The data is transferred to EBS.

#### Answer B:

Data on ephermal storage (instance store) will be lost if the instance is terminated / stopped but `will not lost if the instance is restarted`

	