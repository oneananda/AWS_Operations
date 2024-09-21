# The cooldown period

`The cooldown period` in AWS Auto Scaling is a feature designed to give your system time to stabilize after a scaling event (either scaling in or scaling out). It prevents Auto Scaling from taking additional scaling actions (launching or terminating EC2 instances) until the previous scaling activity has had enough time to take effect.

### Default Cooldown Time:

The default cooldown period is `300 seconds (5 minutes)`, but you can lower this value to suit your system’s behavior.

AWS allows you to set the cooldown period to any value between `0 seconds and a reasonable upper limit`, depending on requirements.