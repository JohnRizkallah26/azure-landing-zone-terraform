variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure location"
  type        = string
}

variable "route_tables" {
  description = "Route tables to create"
  type        = map(any)
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default     = {}
}

variable "subnet_associations" {
  description = "Subnet to route table associations"

  type = map(object({
    subnet_id        = string
    route_table_name = string
  }))

  default = {}
}