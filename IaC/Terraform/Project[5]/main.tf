#:" Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }

  backend "azurerm" {
    resource_group_name  = "modules-rg"
    storage_account_name = "remoteessonsa"
    container_name       = "esssonc1"
    use_azuread_auth     = true  

  }

}

provider "azurerm" {
  features {}
}


# Create a resource group
resource "azurerm_resource_group" "rg" {
  rg_name       =   "remote-rg"
  location      =   "uk south"
}

