resource "azurerm_network_security_group" "nsg" {

  for_each = var.network_security_groups

  name                = each.key
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet_network_security_group_association" "association" {

  for_each = var.subnet_associations

  subnet_id = each.value.subnet_id

  network_security_group_id = azurerm_network_security_group.nsg[each.value.nsg_name].id
}


resource "azurerm_network_security_rule" "web_allow_http" {

  name      = "Allow-HTTP"
  priority  = 100
  direction = "Inbound"
  access    = "Allow"
  protocol  = "Tcp"

  source_port_range      = "*"
  destination_port_range = "80"

  source_address_prefix      = "*"
  destination_address_prefix = "*"

  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.nsg["web-nsg"].name
}

resource "azurerm_network_security_rule" "web_allow_https" {

  name      = "Allow-HTTPS"
  priority  = 110
  direction = "Inbound"
  access    = "Allow"
  protocol  = "Tcp"

  source_port_range      = "*"
  destination_port_range = "443"

  source_address_prefix      = "*"
  destination_address_prefix = "*"

  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.nsg["web-nsg"].name
}