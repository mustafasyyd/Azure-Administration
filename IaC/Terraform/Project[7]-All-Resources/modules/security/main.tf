data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  name                       = "kv-${var.rg_name}"  
  location            	     = var.location
  resource_group_name        = var.rg_name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  
  sku_name                   = "standard"
  #enable_rbac_authorization  = true
  #soft_delete_retention_days = 7

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
 
    key_permissions    = ["Get", "Create"]
    secret_permissions = ["Get", "Set"]
  }
  
}

