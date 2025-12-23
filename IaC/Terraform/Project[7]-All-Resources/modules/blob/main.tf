resource "azurerm_storage_container" "data" {
  name                  = "private-data"
  storage_account_name  = split("/", var.storage_id)[8]
  container_access_type = "private"
}

resource "azurerm_private_endpoint" "blob_pe" {
  name                     = "blob-pe"
  location                 = var.location
  resource_group_name      = var.rg_name
  subnet_id                = var.subnet_id

  private_service_connection {
    name                           = "blob-conn"
    private_connection_resource_id = var.storage_id
    subresource_names              = ["blob"]
    is_manual_connection           = false
  }
}


