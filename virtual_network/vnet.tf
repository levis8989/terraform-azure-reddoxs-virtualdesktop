resource "azurerm_virtual_network" "reddoxs" {
  name                = var.virtual_network_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = [var.ip_address_space]

  subnet {
    name           = var.subnet_name_shared
    address_prefix = var.subnet_daas_shared
  }

  subnet {
    name           = var.subnet_name_corporate
    address_prefix = var.subnet_daas_corporate
  }
  tags = {
    "${var.company_name}" = var.app_daas
  }
}