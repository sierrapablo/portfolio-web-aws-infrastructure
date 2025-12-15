# AWS PROVIDER VARIABLES
variable "region" {
  type        = string
  description = "AWS region for the S3 bucket"
}

variable "profile" {
  type        = string
  description = "AWS profile for the S3 bucket"
  default     = "default"
}

# ACM VARIABLES
variable "domain_name" {
  type        = string
  description = "Domain name for the ACM certificate"
}
