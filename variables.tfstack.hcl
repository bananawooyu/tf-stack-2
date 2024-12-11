variable "regions" {
  type = set(string)
}

variable "vpc_name" {
  type = string 
}

variable "vpc_cidr" {
  type = string
}

variable "tfc_hostname" {
  type = string
}

variable "tfc_organization_name" {
  type = string
}
