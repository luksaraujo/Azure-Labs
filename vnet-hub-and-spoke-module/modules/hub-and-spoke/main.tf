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
  

  # dynamic "subnet" {
  #   for_each = lookup(each.value, "subnet", {}) #!= {} ? [1] : []
  #   content {
  #     name             = each.key
  #     address_prefix = subnet.value.address_prefixes
  #   }

  # }
}

# resource "azurerm_subnet" "subnets_hub" {
#   for_each             = var.subnets_hub
#   name                 = each.key
#   resource_group_name  = azurerm_resource_group.rg.name
#   virtual_network_name = azurerm_virtual_network.vnet.name
#   address_prefixes     = each.value.address_prefixes
# }