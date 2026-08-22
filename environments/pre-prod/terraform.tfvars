rgs = {
  rg1 = {
    name     = "rg-test"
    location = "centralindia"
  }

  # rg2 = {
  #   name     = "rg-dev"
  #   location = "centralindia"
  # }
}

vnets = {
  vnet1 = {
    name                = "vnet-test"
    resource_group_name = "rg-test"
    address_space       = ["10.0.0.0/16"]
  }

  # vnet2 = {
  #   name                = "vnet-prod"
  #   resource_group_name = "rg-dev"
  #   address_space       = ["11.0.0.0/16"]
  # }
}

subnets = {
  subnet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-test"
    virtual_network_name = "vnet-test"
    address_prefixes     = ["10.0.1.0/24"]
  }
  # subnet2 = {
  #   name                 = "backend-subnet"
  #   resource_group_name  = "rg-test"
  #   virtual_network_name = "vnet-test"
  #   address_prefixes     = ["10.0.2.0/24"]
  # }
  # subnet3 = {
  #   name                 = "AzureBastionSubnet"
  #   resource_group_name  = "rg-test"
  #   virtual_network_name = "vnet-test"
  #   address_prefixes     = ["10.0.3.0/24"]
  # }
  # subnet4 = {
  #   name                 = "database-subnet"
  #   resource_group_name  = "rg-test"
  #   virtual_network_name = "vnet-test"
  #   address_prefixes     = ["10.0.4.0/24"]
  # }
  # subnet5 = {
  #   name                 = "appgw-subnet"
  #   resource_group_name  = "rg-test"
  #   virtual_network_name = "vnet-test"
  #   address_prefixes     = ["10.0.5.0/24"]
  # }
}

pips = {
  nat_pip1 = {
    name                = "natgw-pip"
    resource_group_name = "rg-test"
    allocation_method   = "Static"
  }
  # lb_pip1 = {
  #   name                = "lb-pip"
  #   resource_group_name = "rg-test"
  #   allocation_method   = "Static"
  # }
  # bastion_pip1 = {
  #   name                = "bastion-pip"
  #   resource_group_name = "rg-test"
  #   allocation_method   = "Static"
  # }
}

vms = {
  # vm1 = {
  #   nic_name                      = "frontend-nic"
  #   resource_group_name           = "rg-test"
  #   ip_name                       = "frontend-ip"
  #   subnet_name                   = "frontend-subnet"
  #   virtual_network_name          = "vnet-test"
  #   private_ip_address_allocation = "Dynamic"
  #   vm_name                       = "frontend-vm"
  #   admin_username                = "ankitsrtv"
  #   admin_password                = "Ankit@072026"
  # }
  # vm2 = {
  #   nic_name                      = "backend-nic"
  #   resource_group_name           = "rg-test"
  #   ip_name                       = "backend-ip"
  #   subnet_name                   = "backend-subnet"
  #   virtual_network_name          = "vnet-test"
  #   private_ip_address_allocation = "Dynamic"
  #   vm_name                       = "backend-vm"
  #   admin_username                = "ankitsrtv"
  #   admin_password                = "Ankit@072026"
  # }
  # vm3 = {
  #   nic_name                      = "database-nic"
  #   resource_group_name           = "rg-test"
  #   ip_name                       = "database-ip"
  #   subnet_name                   = "database-subnet"
  #   virtual_network_name          = "vnet-test"
  #   private_ip_address_allocation = "Dynamic"
  #   vm_name                       = "database-VM"
  #   admin_username                = "ankitsrtv"
  #   admin_password                = "Ankit@072026"
  # }
}

bastion = {
  # bastion = {
  #   name                 = "AzureBastion"
  #   location             = "centralindia"
  #   resource_group_name  = "rg-test"
  #   ip_name              = "configuration"
  #   subnet_name          = "AzureBastionSubnet"
  #   virtual_network_name = "vnet-test"
  #   pip_name             = "bastion-pip"
  # }
}

nat_gateways = {
  # nat_gw1 = {
  #   nat_gateway_name     = "natgw-test"
  #   pip_name             = "natgw-pip"
  #   resource_group_name  = "rg-test"
  #   virtual_network_name = "vnet-test"
  # }
}

nat_subnet_assoc = {
  # nsa1 = {
  #   subnet_name          = "frontend-subnet"
  #   resource_group_name  = "rg-test"
  #   virtual_network_name = "vnet-test"
  #   nat_gw               = "nat_gw1"
  # }
  # nsa2 = {
  #   subnet_name          = "backend-subnet"
  #   resource_group_name  = "rg-test"
  #   virtual_network_name = "vnet-test"
  #   nat_gw               = "nat_gw1"
  # }
  # nsa3 = {
  #   subnet_name          = "database-subnet"
  #   resource_group_name  = "rg-test"
  #   virtual_network_name = "vnet-test"
  #   nat_gw               = "nat_gw1"
  # }
}

# lbs = {
#   lb1 = {
#     lb_name             = "app-lb"
#     resource_group_name = "rg-test"
#     pip_name            = "lb-pip"
#     frontend_ip_name    = "lb-frontend-ip"
#     backend_pool_name   = "lb-backend-pool"
#     probe_name          = "http-probe"
#     probe_port          = 80
#     rule_name           = "http-rule"
#     frontend_port       = 80
#     backend_port        = 80
#     backend_nics = {
#       nic1 = {
#         nic_name            = "frontend-nic"
#         resource_group_name = "rg-test"
#       }
#       nic2 = {
#         nic_name            = "backend-nic"
#         resource_group_name = "rg-test"
#       }
#     }
#   }
# }

