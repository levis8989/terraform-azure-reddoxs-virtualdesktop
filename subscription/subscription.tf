data "azurerm_subscription" "subscriptions" {
}

resource "random_uuid" "name" {
}

resource "azurerm_role_definition" "roledefinitionglobal" {
  name        = var.role_definition_name
  scope       = data.azurerm_subscription.subscriptions.id
  description = var.role_definition_name_description
  permissions {
    actions          = var.permissions
    not_actions      = []
    data_actions     = []
    not_data_actions = []
  }
  assignable_scopes = [
    data.azurerm_subscription.subscriptions.id,
  ]
}

data "azuread_service_principal" "globalserviceprincipal" {
  display_name = var.service_principal_read
}

resource "azurerm_role_assignment" "roleassignmentglobal" {
  name                             = random_uuid.name.result
  scope                            = data.azurerm_subscription.subscriptions.id
  role_definition_id               = azurerm_role_definition.roledefinitionglobal.role_definition_resource_id
  principal_id                     = data.azuread_service_principal.globalserviceprincipal.id
  skip_service_principal_aad_check = true
}

resource "azurerm_resource_provider_registration" "virtualdesktop" {
  name = var.enable_provider_desktop_virtualization
  lifecycle {
    create_before_destroy = true
  }
}


resource "azurerm_resource_provider_registration" "networkprovider" {
  name = var.enable_provider_network
  lifecycle {
    create_before_destroy = true
  }
}

resource "azurerm_resource_provider_registration" "storageaccountsfslogix" {
  name = var.enable_provider_storage_account
  lifecycle {
    create_before_destroy = true
  }
}