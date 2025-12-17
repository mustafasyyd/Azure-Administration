terraform {

  cloud { 
    
    organization = "esson_terra" 

    workspaces { 
      name = "project-terra" 
    } 
  } 

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                       = var.storage_name
  resource_group_name        = azurerm_resource_group.rg.name
  location                   = azurerm_resource_group.rg.location
  account_tier         	     = "Standard"
  account_replication_type   = "LRS"
  shared_access_key_enabled  = "true"
  
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false

  tags = {
    environment = var.environment
    project     = "terraform-storage"
  }
}
















