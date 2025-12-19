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
  
  backend "remote" {}

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

module "vnet" {
  source = "./modules/vnet"
  vnet_name          =  var.vnet_name
  rg_name            =   var.rg_name
  location           =   var.location
  addr_space	     =  var.addr_space
  snet01_name        =  var.snet01_name
  snet02_name        =  var.snet01_name
  add_prefix_01      =  var.add_prefix_01
  add_prefix_02      =  var.add_prefix_02
}
