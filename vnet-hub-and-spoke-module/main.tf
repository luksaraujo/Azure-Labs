module "hub-and-spoke" {
  source = "./modules/hub-and-spoke"

  resource_group_name = "hub-and-spoke-lab"
  location            = "brazilsouth"
  vnet_hub_name       = "hub-test"
  hub_address_space   = ["10.0.0.0/16"]
  subnets_hub = {
    HubSubnet01 = {
      address_prefixes     = ["10.0.1.0/24"]
      virtual_network_name = "hub-test"
    },
    HubSubnet02 = {
      address_prefixes     = ["10.0.2.0/24"]
      virtual_network_name = "hub-test"
    }
  }
}