output "infrastructure_location" {
  description = "Name of the Datacenter containing the Infrastructure Resources (East US 2, UK West,...)"
  value       = "${var.location}"
}

### Resource Groups ##########################################################

output "appservices1_resource_group_name" {
  description = "Name for the AppServices1 Resource Group"
  value       = "${azurerm_resource_group.appservices1_resource_group.name}"
}

output "appservices2_resource_group_name" {
  description = "Name for the AppServices2 Resource Group"
  value       = "${azurerm_resource_group.appservices2_resource_group.name}"
}

output "datastores_resource_group_name" {
  description = "Name for the Datastores Resource Group"
  value       = "${azurerm_resource_group.datastores_resource_group.name}"
}

output "infrastructure_resource_group_name" {
  description = "Name for the Infrastructure Resource Group"
  value       = "${azurerm_resource_group.infrastructure_resource_group.name}"
}

output "networking_resource_group_name" {
  description = "Name for the Networking Resource Group"
  value       = "${azurerm_resource_group.networking_resource_group.name}"
}

output "storage_resource_group_name" {
  description = "Name for the Storage Resource Group"
  value       = "${azurerm_resource_group.storage_resource_group.name}"
}

### Recovery Services Vault ##########################################################
output "recovery_services_vault_name" {
  description = "Name for Azure Recovery Services Vault"
  value       = "${azurerm_recovery_services_vault.recovery_services_vault.name}"
}

### Azure Storage Accounts ##########################################################
output "appbackups_storage_account_name" {
  description = "Name for the appbackups Storage Account"
  value       = "${azurerm_storage_account.appbackups_storage_account.name}"
}

output "vmdiag_storage_account_name" {
  description = "Name for the vmdiag Storage Account"
  value       = "${azurerm_storage_account.vmdiag_storage_account.name}"
}

output "sqlaudit_storage_account_name" {
  description = "Name for the sqlaudit Storage Account"
  value       = "${azurerm_storage_account.sqlaudit_storage_account.name}"
}

output "sqlbackups_storage_account_name" {
  description = "Name for the sqlbackups Storage Account"
  value       = "${azurerm_storage_account.sqlbackups_storage_account.name}"
}
