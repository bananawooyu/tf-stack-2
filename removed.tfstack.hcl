removed {
    source = "app.terraform.io/rum-org-korean-air/vpc-private-registry/aws"

    for_each = var.regions

    from = component.vpc[each.value]
    providers = {
        aws = provider.aws.configurations[each.value]
    }
}