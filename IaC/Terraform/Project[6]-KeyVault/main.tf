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
module "rg" {
  source        =   "./modules/rg"
  rg_name       =   var.rg_name
  location      =   var.location
}

# Create a virtual network
module "kv_module" {
  source           = "./modules/keyvault"
  kv_name          = var.kv_name
  resource_group   = var.rg_name
  location         = var.location
  sku_name         = var.sku_name
  tenant_id        = var.tenant_id
  soft_delete_days = var.soft_delete_days
}
