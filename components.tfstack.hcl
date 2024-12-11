#AWS VPC
component "vpc" {
  for_each = var.regions

  source = "app.terraform.io/rum-org-korean-air/vpc-private-registry/aws"
  version = "0.0.1"

  inputs = {
    vpc_cidr_block = var.vpc_cidr_block
  }

  providers = {
    aws     = provider.aws.configurations[each.value]
  }
} 
