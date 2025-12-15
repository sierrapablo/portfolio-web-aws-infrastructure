module "acm" {
  source      = "./modules/acm"
  domain_name = var.domain_name
}

module "s3" {
  source      = "./modules/s3_static_site"
  bucket_name = var.bucket_name
}
