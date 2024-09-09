# AWS Lambda CPU - Allocations, Limitations, Implications

### AWS Lambda Memory and CPU Allocation Relationship

AWS Lambda uses a proportional model to allocate CPU power, that means the more memory you allocate to a Lambda function, the more CPU resources are made available.

### CPU Bursting

Think of that you have a low memory usage set in Lambda, but when times you need to have a higher CPU for shorter period of time, Lambda provides us the option to use te CPU burst occasionally and charges apply.

