variable "resource_groups" {
  description = "Resource groups to deploy"

  type = map(object({
    location = string
  }))
}

variable "vm_admin_password" {

  description = "Administrator password for virtual machines"

  type = string

  sensitive = true

}

variable "vm_size" {

  description = "Size of the virtual machine"

  type = string

}

variable "vm_admin_username" {

  description = "Administrator username for virtual machines"

  type = string

}

variable "vm_name" {

  description = "Virtual machine name"

  type = string

}

variable "storage_account_name" {
  description = "Storage account name"
  type        = string
}

variable "log_analytics_workspace_name" {
  type = string
}