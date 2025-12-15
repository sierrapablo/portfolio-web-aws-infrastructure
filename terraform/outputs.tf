# ACM OUTPUTS
output "acm_certificate_arn" {
  value = module.acm.certificate_arn
}

output "acm_validation_records" {
  value = module.acm.validation_records
}
