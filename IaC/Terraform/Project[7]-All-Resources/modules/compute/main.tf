resource "azurerm_network_interface" "web_nic" {
  name                 = "web-nic"
  location	       = var.location
  resource_group_name  = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.web_subnet_id    
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "web_vm" {
  name                  = "web-vm"
  location              = var.location  
  resource_group_name   = var.rg_name  
  size                  = "Standard_D2s_v5"
  admin_username        = var.admin_user
  admin_password	= var.admin_pass
  disable_password_authentication = false
  network_interface_ids = [azurerm_network_interface.web_nic.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "20_04-lts"
    version   = "latest"
  }
}

resource "azurerm_network_interface" "db_nic" {
  name                 = "db-nic"
  location             = var.location
  resource_group_name  = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.db_subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "db_vm" {
  name                  = "db-vm"
  location              = var.location
  resource_group_name   = var.rg_name
  size                  = "Standard_D2s_v5"
  admin_username        = var.admin_user
  admin_password        = var.admin_pass
  disable_password_authentication = false
  network_interface_ids = [azurerm_network_interface.db_nic.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "20_04-lts"
    version   = "latest"
  }
}
