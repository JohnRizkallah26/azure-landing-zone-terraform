output "resource_groups" {
  description = "Map of resource groups"

  value = {
    for name, rg in azurerm_resource_group.rg :
    name => {
      id       = rg.id
      name     = rg.name
      location = rg.location
    }
  }
}