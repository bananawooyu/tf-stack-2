required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.7.0"
  }
}

provider "aws" "config_1" {
  for_each = var.regions

  config {
    region = each.value
    access_key = var.access_key
    secret_key = var.secret_key
  }
}

provider "aws" "config_2" {
  for_each = var.removed_regions

  config {
    region = each.value
    access_key = var.access_key
    secret_key = var.secret_key
  }
}