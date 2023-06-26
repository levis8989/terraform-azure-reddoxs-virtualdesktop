variable "role_definition_name" {
  type        = string
  description = "AVD AutoScale Role"
}

variable "role_definition_name_description" {
  type        = string
  description = "AVD AutoScale Role"
}

variable "permissions" {
  type        = list(string)
  description = "Permissions actions"
}

variable "service_principal_read" {
  type        = string
  description = "Service Principal"
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