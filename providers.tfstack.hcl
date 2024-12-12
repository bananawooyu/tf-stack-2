required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.7.0"
  }
}

provider "aws" "configurations" {
  for_each = var.regions

  config {
    region = each.value
  }
}

provider "aws" "this" {
  config {
    access_key = var.access_key
    secret_key = var.secret_key
  }
}