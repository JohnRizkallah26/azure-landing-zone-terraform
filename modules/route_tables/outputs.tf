output "route_tables" {
  description = "Route tables created by the module"

  value = azurerm_route_table.this
}