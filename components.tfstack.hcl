#AWS VPC
component "vpc" {
  for_each = var.regions

  source = "app.terraform.io/rum-org-korean-air/vpc-private-registry/aws"
  version = "0.0.1"

  inputs = {
    vpc_cidr_block = var.vpc_cidr_block
    enable_classiclink = var.enable_classiclink
    enable_classiclink_dns_support = var.enable_classiclink_dns_support
  }

  providers = {
    aws     = provider.aws.config_1[each.value]
  }
}
