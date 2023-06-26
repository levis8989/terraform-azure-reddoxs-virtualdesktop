// Create Azure Virtual Desktop
resource "azurerm_virtual_desktop_workspace" "reddoxs_shared" {
  name                = var.app_daas_shared
  location            = var.location
  resource_group_name = var.resource_group_name
  friendly_name       = var.app_daas_shared
  description         = var.app_daas_shared
  tags = {
    "${var.company_name}" = var.app_daas_shared
  }
}


resource "azurerm_virtual_desktop_host_pool" "reddoxs_shared" {
  name                = var.app_daas_shared
  location            = var.location
  resource_group_name = var.resource_group_name

  type                     = var.pooled_type
  load_balancer_type       = var.poole_breadth_firstalb
  maximum_sessions_allowed = 5
  validate_environment     = true
  custom_rdp_properties    = var.custom_rdpproperties
  tags = {
    "${var.company_name}" = var.app_daas_shared
  }
}


resource "azurerm_virtual_desktop_application_group" "reddoxs_shared" {
  name                = var.app_daas_shared
  location            = var.location
  resource_group_name = var.resource_group_name

  type          = var.desktop_app_global
  host_pool_id  = azurerm_virtual_desktop_host_pool.reddoxs_shared.id
  friendly_name = var.app_daas_shared
  description   = var.app_daas_shared
  tags = {
    "${var.company_name}" = var.app_daas_shared
  }
}


resource "azurerm_virtual_desktop_workspace_application_group_association" "reddoxs_shared" {
  workspace_id         = azurerm_virtual_desktop_workspace.reddoxs_shared.id
  application_group_id = azurerm_virtual_desktop_application_group.reddoxs_shared.id
}


// Scaling Plan 
resource "azurerm_virtual_desktop_scaling_plan" "reddoxs_shared" {
  name                = var.app_daas_shared
  resource_group_name = var.resource_group_name
  location            = var.location
  friendly_name       = var.app_daas_shared
  description         = var.app_daas_shared
  time_zone           = var.scaling_timezone_colombia
  schedule {
    name                                 = var.app_daas_shared
    days_of_week                         = var.working_days
    ramp_up_start_time                   = var.ramp_up_start
    ramp_up_load_balancing_algorithm     = var.breadth_first
    ramp_up_minimum_hosts_percent        = 5
    ramp_up_capacity_threshold_percent   = 3
    peak_start_time                      = var.disconnection_peak_starttime
    peak_load_balancing_algorithm        = var.breadth_first
    ramp_down_start_time                 = var.end_of_the_rampdown_start
    ramp_down_load_balancing_algorithm   = var.depth_first
    ramp_down_minimum_hosts_percent      = 5
    ramp_down_force_logoff_users         = true
    ramp_down_wait_time_minutes          = 45
    ramp_down_notification_message       = var.ramp_message_global
    ramp_down_capacity_threshold_percent = 5
    ramp_down_stop_hosts_when            = var.ramp_down_stop_sessions
    off_peak_start_time                  = var.off_peak_startTime
    off_peak_load_balancing_algorithm    = var.depth_first
  }
  host_pool {
    hostpool_id          = azurerm_virtual_desktop_host_pool.reddoxs_shared.id
    scaling_plan_enabled = true
  }
  tags = {
    "${var.company_name}" = var.app_daas_shared
  }
}