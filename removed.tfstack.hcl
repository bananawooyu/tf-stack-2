removed {
    source = "app.terraform.io/rum-org-korean-air/vpc-private-registry/aws"
    version = "0.0.1"

    for_each = var.removed_regions

    from = component.vpc[each.value]
    providers = {
        aws = provider.aws.config_2[each.value]
    }
}