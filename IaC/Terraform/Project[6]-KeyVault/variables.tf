variable "rg_name" {
  default = "keyvault-rg"
  type    = string
    description = "Resource Group name"
}

variable "kv_name"  {
  default = "essonnlkv"
  type    = string
  description = "Name of the Key Vault"
}

variable "sku_name" {
  default = "standard"
  type    = string
}

variable "location" {
  default     = "uk south"
  type        = string
  description = "Azure region"

}

variable "tenant_id"  {
  default = "3353bd48-3ba0-4144-b9d5-92cb462fed97" 
  type    = string  
}

variable "soft_delete_days" {
  default = 7
  type    = number
}
