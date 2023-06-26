variable "virtual_network_name" {
  type        = string
  description = "Virtual network name"
}

variable "location" {
  type        = string
  description = "Location of Service"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group"
}

variable "company_name" {
  type        = string
  description = "Company Name"
}

variable "app_daas" {
  type        = string
  description = "Name app daas"
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