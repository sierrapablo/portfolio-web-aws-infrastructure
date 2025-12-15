resource "aws_cloudfront_origin_access_identity" "this" {
  comment = "${var.domain_name} OAI"
}

resource "aws_cloudfront_response_headers_policy" "security" {
  name = "${var.domain_name}-security-headers"
  security_headers_config {
    content_security_policy {
      content_security_policy = "default-src 'self';"
      override                = true
    }
    strict_transport_security {
      access_control_max_age_sec = 31536000
      include_subdomains         = true
      preload                    = true
      override                   = true
    }
    frame_options {
      frame_option = "DENY"
      override     = true
    }
    content_type_options {
      override = true
    }
    referrer_policy {
      referrer_policy = "strict-origin-when-cross-origin"
      override        = true
    }
  }
}

resource "aws_cloudfront_distribution" "this" {
  enabled = true
  aliases = [var.domain_name]

  origin {
    domain_name = var.s3_origin_domain
    origin_id   = "S3-${var.domain_name}"

    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.this.cloudfront_access_identity_path
    }
  }

  default_cache_behavior {
    target_origin_id           = "S3-${var.domain_name}"
    viewer_protocol_policy     = "redirect-to-https"
    allowed_methods            = ["GET", "HEAD"]
    cached_methods             = ["GET", "HEAD"]
    compress                   = true
    default_ttl                = 86400
    max_ttl                    = 31536000
    min_ttl                    = 0
    response_headers_policy_id = aws_cloudfront_response_headers_policy.security.id
  }

  viewer_certificate {
    acm_certificate_arn      = var.certificate_arn
    ssl_support_method       = "sni-only"
    minimum_protocol_version = "TLSv1.2_2021"
  }

  restrictions {
    geo_restriction {
      restriction_type = "whitelist"
      locations        = var.geo_restriction_locations
    }
  }

  default_root_object = "index.html"
}
