# AWS PROVIDER VARIABLES
variable "region" {
  type        = string
  description = "AWS region for the provider configuration"
}

variable "profile" {
  type        = string
  description = "AWS profile for the provider configuration"
  default     = "default"
}

# ACM VARIABLES
variable "domain_name" {
  type        = string
  description = "Domain name for the ACM certificate"
}

# S3 VARIABLES
variable "bucket_name" {
  type        = string
  description = "S3 bucket name"
}

variable "enable_versioning" {
  description = "Enable versioning"
  type        = bool
  default     = false
}
