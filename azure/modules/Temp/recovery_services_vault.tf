resource "azurerm_recovery_services_vault" "recovery_services_vault" {
  name                = "${var.recovery_naming_pattern}-RecoveryVault01"
  resource_group_name = "${azurerm_resource_group.storage_resource_group.name}"
  location            = "${var.location}"
  sku                 = "standard"

  tags = "${merge(
    local.common_tags,
    map(
      "Role","backup",
      "createDate","${timestamp()}",
      "Name","${lower(var.recovery_naming_pattern)}_recoveryvault01"
    )
  )}"
}

resource "azurerm_recovery_services_protection_policy_vm" "recovery_services_protection_policy_vm" {
  name                = "${var.recovery_naming_pattern}-UTC-2200"
  resource_group_name = "${azurerm_resource_group.storage_resource_group.name}"
  recovery_vault_name = "${azurerm_recovery_services_vault.recovery_services_vault.name}"

  backup = {
    frequency = "Daily"
    time      = "22:00"
  }

  retention_daily = {
    count = 7
  }

  retention_weekly = {
    count    = 4
    weekdays = ["Sunday"]
  }
}
