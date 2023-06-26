terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.62.1"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

module "subscription" {
  source                                 = "./subscription"
  role_definition_name                   = var.role_definition_name
  role_definition_name_description       = var.role_definition_name_description
  permissions                            = var.permissions
  service_principal_read                 = var.service_principal_read
  enable_provider_desktop_virtualization = var.enable_provider_desktop_virtualization
  enable_provider_network                = var.enable_provider_network
  enable_provider_storage_account        = var.enable_provider_storage_account
}

module "resource_group" {
  source       = "./resource_group"
  location     = var.location
  company_name = var.company_name
  app_daas     = var.app_daas
}

module "virtual_desktop" {
  source                       = "./virtual_desktop"
  location                     = var.location
  company_name                 = var.company_name
  app_daas_shared              = var.app_daas_shared
  pooled_type                  = var.pooled_type
  poole_breadth_firstalb       = var.poole_breadth_firstalb
  custom_rdpproperties         = var.custom_rdpproperties
  desktop_app_global           = var.desktop_app_global
  scaling_timezone_colombia    = var.scaling_timezone_colombia
  working_days                 = var.working_days
  ramp_up_start                = var.ramp_up_start
  breadth_first                = var.breadth_first
  disconnection_peak_starttime = var.disconnection_peak_starttime
  end_of_the_rampdown_start    = var.end_of_the_rampdown_start
  depth_first                  = var.depth_first
  ramp_message_global          = var.ramp_message_global
  ramp_down_stop_sessions      = var.ramp_down_stop_sessions
  off_peak_startTime           = var.off_peak_startTime
  resource_group_name          = module.resource_group.daas_rsgrp_name
}

module "virtual_network" {
  source                = "./virtual_network"
  virtual_network_name  = var.virtual_network_name
  location              = var.location
  company_name          = var.company_name
  app_daas              = var.app_daas
  ip_address_space      = var.ip_address_space
  resource_group_name   = module.resource_group.daas_rsgrp_name
  subnet_name_shared    = var.subnet_name_shared
  subnet_daas_shared    = var.subnet_daas_shared
  subnet_name_corporate = var.subnet_name_corporate
  subnet_daas_corporate = var.subnet_daas_corporate
}