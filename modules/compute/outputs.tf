output "vm_id" {
  value = azurerm_linux_virtual_machine.linux_vm.id
}

output "vm_name" {
  value = azurerm_linux_virtual_machine.linux_vm.name
}

output "private_ip" {
  value = azurerm_network_interface.linux_nic.private_ip_address
}