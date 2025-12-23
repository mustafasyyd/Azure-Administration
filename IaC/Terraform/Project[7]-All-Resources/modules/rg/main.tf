# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location

  tags = {
        Environment = "WebappEnvironment"
        Purpose     = "WebSiteOperation"
        Engine      = "Terraform"
	Year	    = "2025"
  }
}
