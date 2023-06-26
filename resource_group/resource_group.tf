resource "azurerm_resource_group" "reddoxs" {
  name     = var.app_daas
  location = var.location
  tags = {
    "${var.company_name}" = var.app_daas
  }
}