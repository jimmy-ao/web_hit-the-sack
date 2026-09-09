# main

module "hitthesack" {
  source = "github.com/jimmy-ao/terraform_aws_module-static-website?ref=v0.1.3"

  providers = {
    aws.r53  = aws.r53
    aws.use1 = aws.use1
  }

  project     = "static-websites"
  environment = "prd"

  app    = "hitthesack"
  domain = "archnops.com"

  cloudfront_index_document = "index.html"
  cloudfront_error_document = "error.html"
  cloudfront_price_class    = "PriceClass_100"

  cloudfront_content_security_policy_directives = [
    "default-src 'self'",
    "script-src 'self'",
    "style-src 'self' 'unsafe-inline'",
    "img-src 'self' data: https://*.tile.openstreetmap.org",
    "font-src 'self'",
    "connect-src 'self' https://nominatim.openstreetmap.org",
    "object-src 'none'",
    "base-uri 'none'",
    "form-action 'none'",
    "frame-ancestors 'none'",
    "upgrade-insecure-requests",
  ]

  logging = {
    enabled = true
  }

  analyzing = {
    enabled = true
  }

  waf = {
    enabled = true
  }
}
