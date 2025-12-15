variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "enable_versioning" {
  description = "Enable versioning"
  type        = string
  default     = "Disabled" # "Enabled", "Suspended" or "Disabled"
}

variable "cloudfront_distribution_arn" {
  description = "The ARN of the CloudFront distribution."
  type        = string
}
