variable "rg_name" {
  default = "modules-rg"
  type    = string
}

variable "vnet_name"  {
  default = "modules-vnet"
  type    = string
}


variable "snet01_name" {
  default = "modules-snet01"
  type    = string
}

variable "snet02_name" {
  default = "modules-snet02"
  type    = string
}


variable "location" {
  default = "uk south"
  type    = string

}

variable "addr_space"  {
  default = ["10.2.0.0/16"]
}

variable "add_prefix_01" {
  default = ["10.2.1.0/24"]
}

variable "add_prefix_02" {
  default = ["10.2.2.0/24"]
}
