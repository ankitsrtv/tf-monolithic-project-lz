variable "vnets" {
  type = map(any)
}

resource "azurerm_virtual_network" "vnet_block" {
  for_each            = var.vnets
  name                = each.value.name
  location            = data.azurerm_resource_group.rg_data_block[each.key].location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
}
