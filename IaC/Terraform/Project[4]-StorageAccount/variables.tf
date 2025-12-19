variable "rg_name" {
	default     = "tf-essonn-rg"
	type        = string
	description = "Resource group name"
}

variable "location" {
	default     = "uk south"
	type        = string
        description = "Location name"
}

variable "environment" {
	default     = "storage_account"
        type        = string
        description = "Environment Name"
}

