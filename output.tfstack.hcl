output "vpc_id" {
  description = "vpc id"
  type = set(string)
  value       = component.vpc.id[each.value]
}