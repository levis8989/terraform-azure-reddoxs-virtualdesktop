variable "location" {
  type        = string
  description = "Location of Service"
}

variable "company_name" {
  type        = string
  description = "Company Name"
}

variable "app_daas" {
  type        = string
  description = "Name app daas"
}

variable "app_daas_shared" {
  type        = string
  description = "Name app daas shared"
}

variable "pooled_type" {
  type        = string
  description = "Pooled Type"
}

variable "poole_breadth_firstalb" {
  type        = string
  description = "Pooled Breadth First"
}

variable "custom_rdpproperties" {
  type        = string
  description = "Custom Rdp Properties"
}

variable "desktop_app_global" {
  type        = string
  description = "Type Remote App"
}

variable "role_definition_name" {
  type        = string
  description = "AVD AutoScale Role"
}

variable "role_definition_name_description" {
  type        = string
  description = "AVD AutoScale Role"
}

variable "service_principal_read" {
  type        = string
  description = "Service Principal"
}

variable "permissions" {
  type        = list(string)
  description = "Permissions actions"
}

variable "enable_provider_desktop_virtualization" {
  type        = string
  description = "Provider Desktop Virtualization"
}

variable "enable_provider_network" {
  type        = string
  description = "Enable Provider Network"
}

variable "enable_provider_storage_account" {
  type        = string
  description = "Provider Storage Accounts"
}

variable "scaling_timezone_colombia" {
  type        = string
  description = "Scaling TimeZone Colombia"
}

variable "working_days" {
  type        = list(string)
  description = "Week Days"
}

variable "ramp_up_start" {
  type        = string
  description = "The moment when Ramp-Up scaling will begin."
}

variable "breadth_first" {
  type        = string
  description = "The load balancing algorithm to be used during the ramp-up period."
}

variable "disconnection_peak_starttime" {
  type        = string
  description = "The time at which peak climbing will start"
}

variable "end_of_the_rampdown_start" {
  type        = string
  description = "This is also the final time for the Ramp-Up period."
}

variable "depth_first" {
  type        = string
  description = "Load balancing first in depth allows you to saturate a session host with user sessions on a host group"
}

variable "ramp_message_global" {
  type        = string
  description = "The notification message that will be sent to users during the phase-out period when they are prompted to log off."
}

variable "ramp_down_stop_sessions" {
  type        = string
  description = "Ramp Down Stop zero sessions"
}

variable "off_peak_startTime" {
  type        = string
  description = "The time when off-peak scaling will begin"
}

variable "virtual_network_name" {
  type        = string
  description = "Virtual Network  Name"
}

variable "ip_address_space" {
  type        = string
  description = "Virtual network main ip address space"
}

variable "subnet_daas_shared" {
  type        = string
  description = "Subnet daas shared"
}

variable "subnet_daas_corporate" {
  type        = string
  description = "Subnet daas corporate"
}

variable "subnet_name_shared" {
  type        = string
  description = "Subnet name shared"
}

variable "subnet_name_corporate" {
  type        = string
  description = "Subnet name corporate"
}