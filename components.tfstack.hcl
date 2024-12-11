#AWS VPC
component "vpc" {
  for_each = var.regions

  source = "app.terraform.io/rum-org-korean-air/vpc/aws"
  version = "2.25.0"

  inputs = {
    vpc_name = var.vpc_name
    vpc_cidr = var.vpc_cidr
  }

  providers = {
    aws     = provider.aws.configurations[each.value]
  }
} 
