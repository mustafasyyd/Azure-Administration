#:" Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

 # cloud {
  #  organization = "esson_terra"
  #  workspaces {
   #   name = "project-terra"
    #}
 # }

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
  rg_name          = var.rg_name
  location         = var.location
  tenant_id        = var.tenant_id
  object_id        = var.object_id
}
