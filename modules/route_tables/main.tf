resource "azurerm_route_table" "this" {
  for_each = var.route_tables

  name                = each.key
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

resource "azurerm_subnet_route_table_association" "this" {

  for_each = var.subnet_associations

  subnet_id = each.value.subnet_id

  route_table_id = azurerm_route_table.this[
    each.value.route_table_name
  ].id

}