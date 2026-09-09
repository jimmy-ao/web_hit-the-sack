#  variables

# profiles — local runs only

variable "profile" {
  type        = string
  description = "Named AWS profile for the workload account. Set from terraform.auto.tfvars for local runs; null in CI, where OIDC credentials are used instead."
  default     = null
}

variable "profile_route53" {
  type        = string
  description = "Named AWS profile for the Route 53 account. Set from terraform.auto.tfvars for local runs; null in CI, where var.assume_role_arn_route53 is used instead."
  default     = null
}

# default

variable "region" {
  type        = string
  description = "Region used to deploy resources in."
  default     = "eu-north-1"
}

variable "environment" {
  type        = string
  description = "Resources environment."
  default     = "prd"
}
