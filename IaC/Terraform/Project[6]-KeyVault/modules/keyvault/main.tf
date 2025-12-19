resource "azurerm_key_vault" "kv" {
  name                        = var.kv_name
  resource_group_name         = var.resource_group
  location                    = var.location
  tenant_id                   = var.tenant_id
  sku_name                    = var.sku_name
  soft_delete_retention_days  = var.soft_delete_days

  # Optional security features
  purge_protection_enabled    = true
}

