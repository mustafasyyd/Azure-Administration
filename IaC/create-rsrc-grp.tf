provider "azurerm" {
	features{}

}

resource "azurerm_resource_group" "rsrce-grp" {
	name = "terraform-rg"
	location = "East US"
}
