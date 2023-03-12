# Create SNS topic
provider "aws" {
  region = var.aws_region
}


resource "aws_sns_topic" "my_topic" {
  name = var.topic_name

  tags = {
    Environment = var.environment
    Owner       = var.owner
  }
}

# Subscribe email to SNS topic
resource "aws_sns_topic_subscription" "email_subscription" {
  topic_arn = aws_sns_topic.my_topic.arn
  protocol  = "email"
  endpoint  = var.email_address
}
