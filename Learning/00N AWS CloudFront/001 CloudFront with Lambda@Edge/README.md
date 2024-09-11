# Request and Response Handling with AWS CloudFront and Lambda@Edge

_Viewer Request (Step 1): The viewer sends a request to CloudFront.
Viewer Request Execution (Step 2): CloudFront invokes a Lambda function to handle the viewer request.
Processed Viewer Request (Step 3): The Lambda function processes and returns the modified request to CloudFront.
Origin Request Execution (Step 4): Before sending the request to the origin, CloudFront calls another Lambda function to process the request.
Processed Origin Request (Step 5): The Lambda function processes and returns the modified request.
Forward Request to Origin (Step 6): CloudFront forwards the processed request to the origin server.
Origin Response (Step 7): The origin server responds to CloudFront with the requested content.
Origin Response Execution (Step 8): CloudFront calls a Lambda function to handle the origin response.
Processed Origin Response (Step 9): The Lambda function processes the response and returns it to CloudFront.
Viewer Response Execution (Step 10): Before sending the response back to the viewer, CloudFront invokes a Lambda function to modify the response.
Processed Viewer Response (Step 11): The Lambda function processes and returns the final response.
Forward Response to Viewer (Step 12): CloudFront sends the final processed response back to the viewer.
_
