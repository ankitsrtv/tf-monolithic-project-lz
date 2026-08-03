variable "vms" {
  type = map(any)
}

resource "azurerm_network_interface" "nic_block" {
  for_each            = var.vms
  name                = each.value.nic_name
  location            = data.azurerm_resource_group.rg_data_block[each.key].location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = each.value.ip_name
    subnet_id                     = data.azurerm_subnet.subnet_data_block[each.key].id
    private_ip_address_allocation = each.value.private_ip_address_allocation
    # public_ip_address_id          = data.azurerm_public_ip.pip_data_block[each.key].id
  }
}

resource "azurerm_linux_virtual_machine" "vm_block" {
  for_each                        = var.vms
  name                            = each.value.vm_name
  resource_group_name             = each.value.resource_group_name
  location                        = data.azurerm_resource_group.rg_data_block[each.key].location
  size                            = "Standard_D4_v5"
  admin_username                  = each.value.admin_username
  admin_password                  = each.value.admin_password
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.nic_block[each.key].id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
