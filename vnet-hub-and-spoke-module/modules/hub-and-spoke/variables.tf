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
  type        = any
  description = "Virtual Networks que serão criadas, com suas respectivas subnets"
}