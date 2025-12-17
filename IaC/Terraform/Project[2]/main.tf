#:" Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }

  cloud {
    organization = "esson_terra"
    workspaces {
      name = "project-terra"
    }
  }

}

provider "azurerm" {
  features {}
}


# Create a resource group
resource "azurerm_resource_group" "r_g" {
  name     = var.resource_group_name
  location = "westus2"
  
  tags = {
	Environment = "Webapp"
	Purpose     = "DevOps"
	Engine 	    = "Terraform"
  }
}


# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.r_g.location
  resource_group_name = azurerm_resource_group.r_g.name
  
  tags = {
	Environment = "Webapp"
	Engine 	    = "Terraform"
	Purpose     = "DevOps"
  }
}
