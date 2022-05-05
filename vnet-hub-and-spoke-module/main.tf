# module "hub-and-spoke" {
#   source = "./modules/hub-and-spoke"

#   resource_group_name = "hub-and-spoke-lab"
#   location            = "brazilsouth"
#   vnet_hub_name       = "hub-test"
#   hub_address_space   = ["10.0.0.0/16"]
#   subnets_hub = {
#     HubSubnet01 = {
#       address_prefixes     = ["10.0.1.0/24"]
#     },
#     HubSubnet02 = {
#       address_prefixes     = ["10.0.2.0/24"]
#     }
#   }
# }

module "hub-and-spoke" {
  source              = "./modules/hub-and-spoke"
  resource_group_name = "hub-and-spoke-lab"
  location            = "brazilsouth"
  vnets = {
    hub_vnet = {
      address_space = ["10.0.0.0/16"]
      subnet = {
        hub_subnet_01 = {
          address_prefixes = "10.0.1.0/24"
        },
        hub_subnet_02 = {
          address_prefixes = "10.0.2.0/24"
        }
      }
    }
  }
}
