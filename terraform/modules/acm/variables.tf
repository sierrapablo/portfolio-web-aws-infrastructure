variable "domain_name" {
  description = "Main domain name"
  type        = string
}

variable "subject_alternative_names" {
  description = "SANs optional"
  type        = list(string)
  default     = []
}
