# Azure Provider
provider "azurerm"{
	features {}
	
	subscription_id = "3353bd48-3ba0-4144-b9d5-92cb462fed97"
	tenant_id 	= "a8087c60-522d-41a8-a9f6-171ac8412d36"
	client_id       = "a17cfd9d-9622-4116-a26c-cd9b32f0eaa5"
	client_secret   = "Zf98Q~hfJOzBxfCmvfI_Q2sYjpDAb4GovNJa~bXz"
}

# Create a Resource group
resource "azurerm_resource_group" "rg" {
	name	 = var.rg_name
	location = var.location
}


