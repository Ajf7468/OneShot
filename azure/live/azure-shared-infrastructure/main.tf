terraform {
  backend "azurerm" {
    resource_group_name  = "ajfusstoragelab"
    storage_account_name = "ajfusstoragelab"
    key                  = "azure-shared-infrastructure.tfstate"
  }
}

module "azure-shared-infrastructure" {
  source = "git@github.com:Ajf7468/OneShot.git//azure/modules/azure-shared-infrastructure?ref=0.0.2"

  ### Shared Variables ###
  location              = var.location
  product_name          = var.product_name
  auto_shutdown_enabled = var.auto_shutdown_enabled
  author                = var.author
  environment_name      = var.environment_name
  classification_type   = var.classification_type
  region_name           = var.region_name
  instance_name         = var.instance_name
  tenant_name           = var.tenant_name

  #Module Properties
  resource_group_names = var.resource_group_names
}
