# Deregistration Delay (Or Connection Draining)

`Deregistration Delay`: When an instance is selected for termination, the Load Balancer stops sending new requests to that instance, but it continues to serve the in-flight requests for a specified period (default is 300 seconds). This allows the instance to gracefully finish active sessions before termination.

