variable "kv_name" {
  description = "Name of the Key Vault"
  type        = string
}

variable "resource_group" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "tenant_id" {
  description = "Azure AD Tenant ID"
  type        = string
}

variable "sku_name" {
  description = "Key Vault SKU (standard/premium)"
  type        = string
}

variable "soft_delete_days" {
  description = "Days to retain soft-deleted keys"
  type        = number
}

