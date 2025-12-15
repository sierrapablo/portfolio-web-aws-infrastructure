module "acm" {
  source      = "./modules/acm"
  domain_name = var.domain_name
}

module "s3" {
  source                      = "./modules/s3_static_site"
  bucket_name                 = var.bucket_name
  enable_versioning           = var.enable_versioning
  cloudfront_distribution_arn = var.cloudfront_distribution_arn
}
