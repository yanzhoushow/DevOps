terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.24.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_sqs_queue" "terraform_queue" {
  name                        = "yan-test-sqs.fifo"
  fifo_queue                  = true
  content_based_deduplication = true
  visibility_timeout_seconds  = 10
}
