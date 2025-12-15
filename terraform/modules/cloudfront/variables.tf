variable "domain_name" {
  description = "Domain name www.mydomain.com"
  type        = string
}

variable "certificate_arn" {
  description = "ARN of the ACM certificate"
  type        = string
}

variable "s3_origin_domain" {
  description = "Bucket S3 as origin"
  type        = string
}

variable "geo_restriction_locations" {
  description = "List of ISO country codes allowed"
  type        = list(string)
  default     = ["AT", "BE", "DE", "ES", "FR", "IT", "NL", "PT"]
}
