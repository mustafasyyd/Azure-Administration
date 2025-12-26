resource "azurerm_key_vault" "this" {
  name                        = var.kv_name
  resource_group_name         = var.rg_name
  location                    = var.location
  tenant_id                   = var.tenant_id
  
  sku_name                    = "standard"
  soft_delete_retention_days  = 7

  # Optional security features
  purge_protection_enabled    = false

  access_policy {

    tenant_id                 = var.tenant_id
    object_id                 = var.object_id

    key_permissions = [
      "Get", "Create", "Delete"
    ]

    secret_permissions = [
	"Get", "Set", "Delete"
    ]
  }
}

