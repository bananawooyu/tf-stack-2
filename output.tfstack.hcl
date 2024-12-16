output "vpc_id" {
  description = "vpc id"
  type = set(string)
  value       = component.vpc.vpc_id
}