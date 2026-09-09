#  providers

locals {
  default_tags = {
    Environment = var.environment
    Location    = var.region
    ManagedBy   = "terraform"
    Project     = "hit-the-sack"
  }
}

# Main provider: the workload account, in the project region.

provider "aws" {
  region  = var.region
  profile = var.profile
  
  default_tags {
    tags = local.default_tags
  }
}

# Same account, us-east-1. CloudFront, its WAF and the ACM certificate are
# global services that only exist there.

provider "aws" {
  region  = "us-east-1"
  alias   = "use1"
  profile = var.profile

  default_tags {
    tags = local.default_tags
  }
}

# The account holding the archnops.com public hosted zone.

provider "aws" {
  region  = "us-east-1"
  alias   = "r53"
  profile = var.profile_route53

  default_tags {
    tags = local.default_tags
  }
}
