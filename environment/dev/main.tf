variable "rg" {}
module "rg" {
  source = "../../module/resource_group"
  rg1    = var.rg
}

variable "vnet" {}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../module/virtual_network"
  vnet       = var.vnet
}
variable "subnet" {}
module "subnet" {
  depends_on = [module.vnet]
  source     = "../../module/virtual_subnet"
  subnet     = var.subnet
  }

variable "vms" {}
module "vm" {
  depends_on = [ module.subnet ]
  source = "../../module/virtual_machine"
  vm = var.vms
}
