variable "resource_group_name" {
  description = "Resource group for the storage account"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "storage_account_name" {
  description = "Globally unique storage account name"
  type        = string
}