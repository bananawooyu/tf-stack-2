required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.0"
  }
}

provider "aws" "configurations" {
  for_each = var.regions

  config {
    region = each.value
  }
}
