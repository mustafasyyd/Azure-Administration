variable "project_name" {
  type 	  	= string
  description	= "enter project name"
}
variable "location" {
  type 	  	= string
  description	= "enter location"
}

variable "vnet_cidr" {
  type		= string
  description	= "vnet_cidr"

}

variable "web_subnet_id" {
  type          = string
  description   = "web_subnet_id"

}

variable "db_subnet_id" {

  type          = string
  description   = "db_subnet_id"
}
