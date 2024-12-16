variable "regions" {
  type = set(string)
}

variable "removed_regions" {
  type = set(string)
}

variable "vpc_cidr_block" {
  type = string
}

variable "access_key" {
  description = "AWS access key"
  type     = string
  ephemeral = true
}

variable "secret_key" {
  description = "AWS sensitive secret key."
  type     = string
  sensitive = true
  ephemeral = true
}

variable "enable_classiclink" {
  type = bool
}

variable "enable_classiclink_dns_support" {
  type = bool
}