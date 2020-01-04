resource "azurerm_resource_group" "resource_groups" {
  for_each = toset(var.resource_group_names)
  name     = "${local.resource_naming_pattern}${lower(each.value)}"
  location = var.location

  tags = merge(
    local.common_tags,
    map(
      "role", "organization",
      "name", lower(each.value)
    )
  )
}
