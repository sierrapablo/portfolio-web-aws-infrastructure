variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "enable_versioning" {
  description = "Enable versioning"
  type        = bool
  default     = false
}

variable "cloudfront_oai_iam_arn" {
  description = "IAM ARN of CloudFront Origin Access Identity"
  type        = string
  default     = ""
}

variable "cloudfront_distribution_arn" {
  description = "ARN of CloudFront distribution"
  type        = string
  default     = ""
}
