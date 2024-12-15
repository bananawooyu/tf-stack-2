output "vpc_cidr" {
  description = "vpc cidr block"
  type = set(string)
  value       = component.vpc.vpc_cidr_block
}

output "vpc_id" {
    description = "vpc id"
    type = set(string)
    value = component.vpc.id
}