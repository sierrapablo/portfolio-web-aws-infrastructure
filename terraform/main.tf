module "acm" {
  source      = "./modules/acm"
  domain_name = var.domain_name
}

module "s3" {
  source            = "./modules/s3_static_site"
  bucket_name       = var.bucket_name
  enable_versioning = var.enable_versioning
}

module "cloudfront" {
  source           = "./modules/cloudfront"
  domain_name      = var.domain_name
  certificate_arn  = module.acm.certificate_arn
  s3_origin_domain = module.s3.bucket_regional_domain_name
}

resource "aws_s3_bucket_policy" "cloudfront" {
  bucket = module.s3.bucket_name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowCloudFrontAccess"
        Effect = "Allow"
        Principal = {
          AWS = module.cloudfront.oai_iam_arn
        }
        Action   = "s3:GetObject"
        Resource = "${module.s3.bucket_arn}/*"
      }
    ]
  })

  depends_on = [module.cloudfront]
}
