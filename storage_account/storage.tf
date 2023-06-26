resource "azurerm_storage_account" "loganalytics" {
  name                            = var.LogStorageAnalyticsVm
  account_tier                    = var.AccountierStandard
  location                        = azurerm_resource_group.network.location
  resource_group_name             = azurerm_resource_group.network.name
  account_replication_type        = var.RedundancyLrs
  allow_nested_items_to_be_public = false
  large_file_share_enabled        = false
}

// Storage Fslogix
/*resource "azurerm_storage_account" "storagefslogixfincas" {
  name                     = var.StorageFslogixFincas
  resource_group_name      = azurerm_resource_group.application.name
  location                 = azurerm_resource_group.network.location
  account_kind             = var.StorageAccountKind
  account_tier             = var.PerformanceStoragePremium
  account_replication_type = var.RedundancyLrs
  allow_nested_items_to_be_public = false
  tags = {
    "storage-account" = "reddoxs"
  }
}*/