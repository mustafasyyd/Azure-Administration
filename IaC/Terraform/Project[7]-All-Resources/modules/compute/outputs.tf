output "web_private_ip" {
  value = azurerm_linux_virtual_machine.web_vm.private_ip_address
}
