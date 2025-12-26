variable "kv_name" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "location"  {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "object_id" {
  type         = string
  description  = "Object ID of the user or service principal"
}

