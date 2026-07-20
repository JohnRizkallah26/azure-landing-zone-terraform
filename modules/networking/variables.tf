variable "resource_group_name" {
  description = "Resource Group where the VNet will be created"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
}

variable "address_space" {
  description = "VNet address space"
  type        = list(string)
}

variable "subnets" {
  description = "Subnets to create"

  type = map(object({
    address_prefix = string
  }))
}