# Request and Response Handling with `AWS CloudFront` and `Lambda@Edge`

## Scenario

Explain how to integrate `Lambda@Edge` in each of the stages in `CloudFront`

**Stages:**

- Viewer Request: CloudFront receives the request from the viewer and triggers a Lambda function to process this initial request.
- Origin Request: Before sending the request to the origin server, CloudFront calls another Lambda function to modify or process the request.
- Origin Response: After receiving the response from the origin, CloudFront invokes a Lambda function to process or modify the response.
- Viewer Response: Before sending the final response back to the viewer, CloudFront calls a Lambda function to make any last modifications.

## Steps for the scenario 

[`AWS CloudFront` and `Lambda@Edge` UML](https://github.com/oneananda/AWS_Operations/blob/main/Learning/00N%20AWS%20CloudFront/001%20CloudFront%20with%20Lambda%40Edge/Request%20and%20Response%20Handling%20with%20AWS%20CloudFront%20and%20Lambda%40Edge%20-%20A%20Sequence%20Diagram%202.png)

- Viewer Request (Step 1): The viewer sends a request to CloudFront.
- Viewer Request Execution (Step 2): CloudFront invokes a Lambda function to handle the viewer request.
- Processed Viewer Request (Step 3): The Lambda function processes and returns the modified request to CloudFront.
- Origin Request Execution (Step 4): Before sending the request to the origin, CloudFront calls another Lambda function to process the request.
- Processed Origin Request (Step 5): The Lambda function processes and returns the modified request.
- Forward Request to Origin (Step 6): CloudFront forwards the processed request to the origin server.
- Origin Response (Step 7): The origin server responds to CloudFront with the requested content.
- Origin Response Execution (Step 8): CloudFront calls a Lambda function to handle the origin response.
- Processed Origin Response (Step 9): The Lambda function processes the response and returns it to CloudFront.
- Viewer Response Execution (Step 10): Before sending the response back to the viewer, CloudFront invokes a Lambda function to modify the response.
- Processed Viewer Response (Step 11): The Lambda function processes and returns the final response.
- Forward Response to Viewer (Step 12): CloudFront sends the final processed response back to the viewer.

