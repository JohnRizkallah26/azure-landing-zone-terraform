variable "resource_group_name" {
  description = "Resource Group where NSGs will be created"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "network_security_groups" {
  description = "Map of NSGs to create"

  type = map(object({}))
}

variable "subnet_associations" {
  description = "Subnet to NSG associations"
  type = map(object({
    subnet_id = string
    nsg_name  = string
  }))
}



