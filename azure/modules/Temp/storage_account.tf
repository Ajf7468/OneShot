locals {
  prod_values = {
    "access_tier" = "Hot"
  }

  non_prod_values = {
    "access_tier" = "Cool"
  }

  access_tier_value         = "${lower(var.is_prod) == "true" ? local.prod_values["access_tier"] : local.non_prod_values["access_tier"] }"
  account_kind_value        = "StorageV2"
  account_tier_value        = "Standard"
  account_replication_value = "LRS"
  account_encryption_value  = "true"
}

resource "azurerm_storage_account" "appbackups_storage_account" {
  name                      = "${var.storage_naming_pattern}appbackups"
  resource_group_name       = "${azurerm_resource_group.storage_resource_group.name}"
  location                  = "${var.location}"
  account_kind              = "${local.account_kind_value}"
  account_tier              = "${local.account_tier_value}"
  account_replication_type  = "${local.account_replication_value}"
  access_tier               = "${local.access_tier_value}"
  enable_blob_encryption    = "${local.account_encryption_value}"
  enable_file_encryption    = "${local.account_encryption_value}"
  enable_https_traffic_only = "${local.account_encryption_value}"

  tags = "${merge(
    local.common_tags,
    map(
      "Role","organization",
      "createDate","${timestamp()}",
      "Name","${lower(var.storage_naming_pattern)}appbackups"
    )
  )}"
}

resource "azurerm_storage_account" "vmdiag_storage_account" {
  name                      = "${var.storage_naming_pattern}vmdiag"
  resource_group_name       = "${azurerm_resource_group.storage_resource_group.name}"
  location                  = "${var.location}"
  account_kind              = "${local.account_kind_value}"
  account_tier              = "${local.account_tier_value}"
  account_replication_type  = "${local.account_replication_value}"
  access_tier               = "${local.access_tier_value}"
  enable_blob_encryption    = "${local.account_encryption_value}"
  enable_file_encryption    = "${local.account_encryption_value}"
  enable_https_traffic_only = "${local.account_encryption_value}"

  tags = "${merge(
    local.common_tags,
    map(
      "Role","organization",
      "createDate","${timestamp()}",
      "Name","${lower(var.storage_naming_pattern)}vmdiag"
    )
  )}"
}

resource "azurerm_storage_account" "sqlaudit_storage_account" {
  name                      = "${var.storage_naming_pattern}sqlaudit"
  resource_group_name       = "${azurerm_resource_group.storage_resource_group.name}"
  location                  = "${var.location}"
  account_kind              = "${local.account_kind_value}"
  account_tier              = "${local.account_tier_value}"
  account_replication_type  = "${local.account_replication_value}"
  access_tier               = "${local.access_tier_value}"
  enable_blob_encryption    = "${local.account_encryption_value}"
  enable_file_encryption    = "${local.account_encryption_value}"
  enable_https_traffic_only = "${local.account_encryption_value}"

  tags = "${merge(
    local.common_tags,
    map(
      "Role","organization",
      "createDate","${timestamp()}",
      "Name","${lower(var.storage_naming_pattern)}sqlaudit"
    )
  )}"
}

resource "azurerm_storage_account" "sqlbackups_storage_account" {
  name                      = "${var.storage_naming_pattern}sqlbackups"
  resource_group_name       = "${azurerm_resource_group.storage_resource_group.name}"
  location                  = "${var.location}"
  account_kind              = "${local.account_kind_value}"
  account_tier              = "${local.account_tier_value}"
  account_replication_type  = "${local.account_replication_value}"
  access_tier               = "${local.access_tier_value}"
  enable_blob_encryption    = "true"
  enable_file_encryption    = "true"
  enable_https_traffic_only = "true"

  tags = "${merge(
    local.common_tags,
    map(
      "Role","organization",
      "createDate","${timestamp()}",
      "Name","${lower(var.storage_naming_pattern)}sqlbackups"
    )
  )}"
}
