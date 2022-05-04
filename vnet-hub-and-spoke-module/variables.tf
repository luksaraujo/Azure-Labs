variable "location" {
  type        = string
  description = "Location onde a subnet será criada"
}

variable "resource_group_name" {
  type        = string
  description = "Nome do resource group onde a VNet será criada"
}

variable "vnet_hub_name" {
  type = string
  description = "Nome da Virtual Network hub"
}

variable "hub_address_space" {
  type = list(string)
  description = "Address Space da VNet Hub"
}

variable "tags" {
  description = "Tags que serão atribuídas aos recursos criados pelo módulo"
  type = map(string)
  default = {
    "environment" = "test"
    "project" = "hub-and-spoke-vnet-module"
  }
}

variable "subnets-hub" {
  type = any
  description = "Subnets da VNet Hub"
  default = {
      
  }
}