output "vpc_cidr" {
  description = "vpc cidr block"
  value       = component.vpc.vpc_cidr_block
}

output "vpc_id" {
    description = "vpc id"
    value = component.vpc.id
}