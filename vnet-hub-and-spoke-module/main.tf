resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet_hub" {
  name                = var.vnet_hub_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = var.hub_address_space
  tags                = var.tags
}

resource "azurerm_subnet" "subnets_hub" {
  for_each             = var.subnets_hub
  name                 = each.key
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet_hub.name
  address_prefixes     = each.value.address_prefixes
}