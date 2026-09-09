# outputs

output "website_url" {
  description = "Primary HTTPS URL the website is served from."
  value       = module.hitthesack.website_url
}

output "cloudfront_aliases" {
  description = "Every hostname served by the distribution."
  value       = module.hitthesack.cloudfront_aliases
}

output "cloudfront_id" {
  description = "Distribution ID. The Astro workflow resolves this from the alias at deploy time, but it is exported here so it can be pinned as a repository variable instead."
  value       = module.hitthesack.cloudfront_id
}

output "web_bucket_id" {
  description = "Name of the S3 bucket holding the website content."
  value       = module.hitthesack.web_bucket_id
}

output "web_bucket_arn" {
  description = "ARN of the website content bucket, for scoping the deploy role's policy."
  value       = module.hitthesack.web_bucket_arn
}
