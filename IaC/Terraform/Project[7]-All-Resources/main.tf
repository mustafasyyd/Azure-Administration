#:" Configure the Azure provider

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
    }
  }

}

provider "azurerm" {
  features {}
}


# Create a resource group
module "rg" {
  source        =   "./modules/rg"
  rg_name       =   "${var.project_name}-rg"
  location      =   var.location
}

# Create a virtual network

module "network" {
  source = "./modules/network"

  rg_name	    = module.rg.name
  location	    = module.rg.location
  vnet_cidr         = var.vnet_cidr  
}

module "storage" {
  source          = "./modules/storage"
  
  rg_name	  = module.rg.name
  location	  = module.rg.location
  
  subnet_id	  = module.network.db_subnet_id
}


module "blob" {
  source	= "./modules/blob"
  rg_name	= module.rg.name
  location	= module.rg.location
  storage_id    = module.storage.id
  subnet_id	= module.network.db_subnet_id

}

module "fileshare" {
  source	= "./modules/fileshare"
  storage_id	= module.storage.id
}

module "keyvault" {
  source	= "./modules/security"

  rg_name	= module.rg.name 
  location	= module.rg.location
}


module "compute" {
  source        = "./modules/compute"

  rg_name	= module.rg.name
  location	= module.rg.location

  web_subnet_id = module.network.web_subnet_id
  db_subnet_id	= var.db_subnet_id
}
