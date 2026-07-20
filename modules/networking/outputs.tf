output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnets" {

  description = "Map of created subnets"

  value = {
    for name, subnet in azurerm_subnet.subnet :
    name => {
      id   = subnet.id
      name = subnet.name
    }
  }
}
