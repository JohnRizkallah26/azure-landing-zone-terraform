output "network_security_groups" {

  description = "Map of Network Security Groups"

  value = {
    for name, nsg in azurerm_network_security_group.nsg :
    name => {
      id   = nsg.id
      name = nsg.name
    }
  }
}