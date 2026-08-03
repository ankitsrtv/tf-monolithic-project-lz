module "rg" {
  source = "../child_module/azurerm_resource_group"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../child_module/azurerm_vnet"
  vnets      = var.vnets
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../child_module/azurerm_subnet"
  subnets    = var.subnets
}

module "public_ip" {
  depends_on = [module.rg]
  source     = "../child_module/azurerm_public_ip"
  pips       = var.pips
}

module "vm" {
  depends_on = [module.subnet, module.public_ip]
  source     = "../child_module/azurerm_vm"
  vms        = var.vms
}

//module "bastion" {
//  depends_on = [module.subnet, module.public_ip]
//  source     = "../child_module/azurerm_bastion"
//  bastion    = var.bastion
//}

module "nat_gateway" {
  depends_on       = [module.subnet, module.public_ip]
  source           = "../child_module/azurerm_nat_gateway"
  nat_gateways     = var.nat_gateways
  nat_subnet_assoc = var.nat_subnet_assoc
}

module "lb" {
  depends_on = [module.vm, module.public_ip]
  source     = "../child_module/azurerm_lb"
  lbs        = var.lbs
}
