variable "nat_gateways" {
  type = map(any)
}
variable "nat_subnet_assoc" {
  type = map(any)
}

resource "azurerm_nat_gateway" "nat_gw" {
  for_each            = var.nat_gateways
  name                = each.value.nat_gateway_name
  location            = data.azurerm_resource_group.rg_data[each.key].location
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_nat_gateway_public_ip_association" "nat_pip_assoc" {
  for_each             = var.nat_gateways
  nat_gateway_id       = azurerm_nat_gateway.nat_gw[each.key].id
  public_ip_address_id = data.azurerm_public_ip.pip_data[each.key].id
}

resource "azurerm_subnet_nat_gateway_association" "nat_subnet_assoc" {
  for_each       = var.nat_subnet_assoc
  subnet_id      = data.azurerm_subnet.subnet_data[each.key].id
  nat_gateway_id = azurerm_nat_gateway.nat_gw[each.value.nat_gw].id
}
