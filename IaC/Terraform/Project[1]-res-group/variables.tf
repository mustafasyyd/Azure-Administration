variable "environment" {
  description = "Deployment environment (dev, test, prod)"
  type        = string
  default     = "Web Application"
}

variable "location_root" { 
  description = "Azure region for all resources"
  type        = string
  default     = "East US"
}

variable "rg_name_root" {
  description = "Name of the Resource Group"
  type        = string
  default     = "modules-rg"
}
