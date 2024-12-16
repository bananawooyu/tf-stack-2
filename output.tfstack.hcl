output "vpc" {
  description = "vpc cidr block"
  type = set(string)
  value       = component.vpc
}