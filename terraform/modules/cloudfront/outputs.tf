output "distribution_domain_name" {
  value = aws_cloudfront_distribution.this.domain_name
}

output "oai_iam_arn" {
  value = aws_cloudfront_origin_access_identity.this.iam_arn
}
