resource "azurerm_resource_group" "rg" {
    name = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet-hub" {
    name = var.vnet_hub_name
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    address_space = var.hub_address_space
    depends_on = [data.azurerm_resource_group.rg-vnet]
    tags = var.tags
}

