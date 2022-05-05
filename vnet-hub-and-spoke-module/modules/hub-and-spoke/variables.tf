variable "location" {
  type        = string
  description = "Location onde a subnet será criada"
}

variable "resource_group_name" {
  type        = string
  description = "Nome do resource group onde a VNet será criada"
}

variable "tags" {
  description = "Tags que serão atribuídas aos recursos criados pelo módulo"
  type        = map(string)
  default = {
    "environment" = "test"
    "project"     = "hub-and-spoke-vnet-module"
  }
}

variable "vnets" {
  type = any
  description = "Virtual Networks que serão criadas, com suas respectivas subnets"
}

# variable "subnets_hub" {
#   type        = any
#   description = "Subnets da VNet Hub"
# }

# variable "vnet_hub_name" {
#   type        = string
#   description = "Nome da Virtual Network hub"
# }

# variable "hub_address_space" {
#   type        = list(string)
#   description = "Address Space da VNet Hub"
# }