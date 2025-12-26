variable "kv_name" {
  description = "Enter the Key Vault name"
  type        = string
}

variable "location" {
  description = "Enter the Azure region (e.g. westeurope)"
  type        = string
}

variable "rg_name" {
  description = "Enter the Resource Group name"
  type        = string
}

variable "tenant_id" {
  description = "Enter the Entra ID tenant ID"
  type        = string
}

variable "object_id" {
  description = "Enter the Object ID (user or service principal)"
  type        = string
}

