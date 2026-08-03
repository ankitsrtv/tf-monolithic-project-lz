data "azurerm_resource_group" "rg_data" {
  for_each = var.nat_gateways
  name     = each.value.resource_group_name
}

data "azurerm_subnet" "subnet_data" {
  for_each             = var.nat_subnet_assoc
  name                 = each.value.subnet_name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
}

data "azurerm_public_ip" "pip_data" {
  for_each            = var.nat_gateways
  name                = each.value.pip_name
  resource_group_name = each.value.resource_group_name
}
