#AWS VPC
component "vpc" {
  for_each = var.regions

  source = "app.terraform.io/rum-org-korean-air/vpc/aws"
  version = "2.25.1"

  inputs = {
    vpc_name = var.vpc_name
    vpc_cidr = var.vpc_cidr
    enable_classiclink = var.enable_classiclink
    enable_classiclink_dns_support = var.enable_classiclink_dns_support
  }

  providers = {
    aws     = provider.aws.configurations[each.value]
  }
} 
