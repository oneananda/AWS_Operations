provider "aws" {
  region = "us-east-2"  
}

resource "aws_sqs_queue" "my_queue" {
  name                      = "my-terraform-queue"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  visibility_timeout_seconds = 300
}
