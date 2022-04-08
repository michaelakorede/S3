variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "michael_test_bucket" {
  description = "S3 bucket name"
  type        = string
  default     = "my-awesome-test-s3-bucket"

  validation {
    condition = length(var.michael_test_bucket) > 2 && length(var.michael_test_bucket) < 64 && can(regex("^[0-9A-Za-z-]+$", var.michael_test_bucket))
    error_message = "The bucket_name must follow naming rules. Check them out at: https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html."
  }
}

variable "access_logging_michael_test_bucket" {
  description = "S3 bucket name for access logging storage"
  type        = string
  default     = "my-access-logging-michael_test_bucket"
}