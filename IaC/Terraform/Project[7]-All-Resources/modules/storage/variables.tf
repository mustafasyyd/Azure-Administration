variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "subnet_id" {
  type        = string
  description = "The ID of the DB subnet to allow Service Endpoint access"
}
