module "hub-and-spoke" {
  source              = "./modules/hub-and-spoke"
  resource_group_name = "hub-and-spoke-lab"
  location            = "brazilsouth"
  vnets = {
    hub_vnet = {
      address_space = ["10.0.0.0/16"]
      subnet = [
        {
          name             = "hub_subnet_01"
          address_prefixes = "10.0.1.0/24"
        },
        {
          name             = "hub_subnet_02"
          address_prefixes = "10.0.2.0/24"
        }
      ]
    }
  }
}
