resource "azurerm_storage_share" "fs" {
  name                 = "db-shared-files"
  storage_account_name = split("/", var.storage_id)[8]
  quota                = 50 # Size in GB
}
