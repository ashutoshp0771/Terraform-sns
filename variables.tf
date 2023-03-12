variable "topic_name" {
  description = "Name of the SNS topic to create"
  type        = string
  default = "ashutosh"
}

variable "aws_region" {
  description = "Name of region"
  type        = string
  default = "us-east-1"
}

variable "environment" {
  description = "Environment for tagging the SNS topic"
  type        = string
  default = "dev"
}

variable "owner" {
  description = "Owner for tagging the SNS topic"
  type        = string
  default = "ashu"
}

variable "email_address" {
  description = "Email address to subscribe to the SNS topic"
  type        = string
  default = "ashutoshp2701@gmail.com"
}
