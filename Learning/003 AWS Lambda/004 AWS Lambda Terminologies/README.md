# AWS Lambda Terminologies

## Cold Start

It is a general term but fits well with AWS Lambda, refers to the delay that occurs when a new instance of a Lambda function is initialized and executed for the first time. This delay happens because AWS needs to 
- set up the execution environment, 
- allocating compute resources, 
- loading the runtime environment, 
- and initializing the code for the function.