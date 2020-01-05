### Shared Variables ###
variable "location" {
  type        = string
  description = "The Azure Datacenter to deploy the resources (East US 2...)"
}

variable "product_name" {
  type        = string
  description = "Product Name Value (acme, admin...)"
}

variable "auto_shutdown_enabled" {
  type        = bool
  description = "AutoShutdown Boolean Value (true or false)"
}

variable "author" {
  type        = string
  description = "Author Name Value (Individual/Group Name)"
}

variable "environment_name" {
  type        = string
  description = "Environment Name Value (dev, qa...)"
}

variable "classification_type" {
  type        = string
  description = "General Classification of Infrastructure (nonprod, prod...)"
}

variable "region_name" {
  type        = string
  description = "Region Name Value (us, uk, eu...)"
}

variable "instance_name" {
  type        = string
  description = "Instance Name for the module (alpha, a, primary, secondary...)"
}

variable "tenant_name" {
  type        = string
  description = "Tenant Name for the module (Larry, Oh410...)"
}

#Module Variables
variable "resource_group_names" {
  type    = list(string)
  default = ["networking", "datastores", "storage", "appservices"]
}
