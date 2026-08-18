variable "rgs" {
  type = map(any)
}
variable "vnets" {
  type = map(any)
}
variable "subnets" {
  type = map(any)
}
variable "pips" {
  type = map(any)
}
variable "vms" {
  type = map(any)
}
variable "bastion" {
  type = map(any)
}
variable "nat_gateways" {
  type = map(any)
}
variable "nat_subnet_assoc" {
  type = map(any)
}
# variable "lbs" {
#   type = map(any)
# }