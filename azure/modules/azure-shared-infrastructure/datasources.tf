locals {
  #Derived Values
  resource_naming_pattern = "${var.tenant_name}-${var.region_name}-${var.environment_name}-${var.instance_name}-"

  common_tags = {
    product        = var.product_name
    author         = var.author
    environment    = var.environment_name
    classification = var.classification_type
    region         = var.region_name
    instance       = var.instance_name
    tenant         = var.tenant_name
  }
}
