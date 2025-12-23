
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }

}

provider "azurerm" {
  features {}
}


# Create a resource group
resource "azurerm_resource_group" "rg" {
  name       	=   var.rg_name
  location      =   var.location
}

