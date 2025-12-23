variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "web_subnet_id" {
  type = string
}

variable "db_subnet_id" {
  type = string
}

variable "admin_user" {
  type = string
}

variable "admin_pass" {
  type      = string
  sensitive = true
}
