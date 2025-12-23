variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "storage_id" {
  type        = string
  description = "The resource ID of the storage account"
}

variable "subnet_id" {
  type        = string
  description = "The subnet ID where the Private Endpoint will live"
}
