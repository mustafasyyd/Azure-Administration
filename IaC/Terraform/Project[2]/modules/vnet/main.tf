
# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.addr_space
  location            = var.location
  resource_group_name = var.rg_name

  tags = {
        Environment = "Webapp"
        Engine      = "Terraform"
        Purpose     = "DevOps"
  }
}

# Create a subnet
resource "azurerm_subnet" "subnet1" {
  name                 = var.snet01_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.add_prefix_01
}


# Create a subnet
resource "azurerm_subnet" "subnet2" {
  name                 = var.snet02_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_name  
  address_prefixes     = var.add_prefix_02
}
