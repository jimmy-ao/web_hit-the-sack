# data

data "aws_wafv2_web_acl" "cloudfront" {
  provider = aws.use1

  name  = "p-waf-use1-cloudfront-web-acl"
  scope = "CLOUDFRONT"
}