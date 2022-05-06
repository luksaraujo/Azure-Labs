resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_virtual_network" "vnet" {
  for_each            = var.vnets
  name                = each.key
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = each.value.address_space
  tags                = var.tags

  dynamic "subnet" {
    for_each = each.value.subnet
    content {
      name           = subnet.value.name
      address_prefix = subnet.value.address_prefixes
    }
  }
}