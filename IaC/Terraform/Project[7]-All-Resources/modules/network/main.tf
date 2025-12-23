resource "azurerm_virtual_network" "vnet" {
  virtual_network_name = "main-vnet"
  location             = var.location  
  resource_group_name  = var.rg_name  
  address_space        = [var.vnet_cidr]
}

resource "azurerm_subnet" "web" {
  name                 = "web-subnet"
  resource_group_name  = var.rg_name  
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [cidrsubnet(var.vnet_cidr, 8, 1)]
}

resource "azurerm_subnet" "db" {
  name                 	= "db-subnet"
  resource_group_name	= var.rg_name
  virtual_network_name	= azurerm_virtual_network.vnet.name
  address_prefixes	= [cidrsubnet(var.vnet_cidr, 8, 2)]
  
  # Enable Service Endpoints for the File Share requirement
  service_endpoints	= ["Microsoft.storage"]
}



