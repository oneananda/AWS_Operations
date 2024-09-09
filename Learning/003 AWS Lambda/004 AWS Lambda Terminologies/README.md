# AWS Lambda Terminologies

## Cold Start

It is a general term but fits well with AWS Lambda, refers to the delay that occurs when a new instance of a Lambda function is initialized and executed for the first time. This delay happens because AWS needs to 
- set up the execution environment, 
- allocating compute resources, 
- loading the runtime environment, 
- and initializing the code for the function.

**Initialization Process:** When a Lambda function is invoked for the first time or after a period of inactivity, AWS needs to:

Allocate an execution environment (container) for the function.
Download the function code and any necessary libraries.
Initialize the runtime (e.g., Node.js, Python, Java, etc.).
Run the initialization code (e.g., connecting to databases, loading configurations).

