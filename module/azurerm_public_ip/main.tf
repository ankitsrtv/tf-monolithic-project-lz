variable "pips" {
  type = map(any)
}

resource "azurerm_public_ip" "pip_block" {
  for_each            = var.pips
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = data.azurerm_resource_group.rg_data_block[each.key].location
  allocation_method   = each.value.allocation_method
}
