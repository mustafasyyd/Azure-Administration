terraform {
  cloud {    
    organization = "esson_terra" 
    workspaces { 
      name = "project-terra" 
    } 
  }  
}

# Azure Provider
provider "azurerm"{
  features {}
}

# Create a Resource group
module "rg" {
  source	=  "./modules/resource-group"
  rg_name  = var.rg_name_root  
  location = var.location_root
}


