resource "aws_sqs_queue" "terraform_queue" {
  name                      = "terraform-example-queue"
  delay_seconds             = 80
  max_message_size          = 2048
  message_retention_seconds = 864000
  receive_wait_time_seconds = 10
  fifo_queue= false
  content_based_deduplication = false

  tags = {
    Environment = "production"
  }
}
