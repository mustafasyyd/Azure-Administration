resource "azurerm_storage_account" "sa" {
  name                     = "tfstorage${random_id.id.hex}"
  location		   = var.location
  resource_group_name      = var.rg_name  
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
  network_rule {
    default_location	= "Deny"
    virtual_network_id	= [var.subnet_id] # Service Endpoint mapping
    bypass		= ["AzureServices"]
  
  }

}


