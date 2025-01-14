rg = {
  rg1 = {
    rg_name  = "RG-Splunk"
    location = "CentralIndia"
  }
}

vnet = {
  vnet1 = {
    vnet_name     = "vnet-B"
    address_space = ["10.0.0.0/16"]
    rg_name       = "RG-Splunk"
    location      = "CentralIndia"
  }
}

subnet = {
  sbnet1 = {
    sbnet_name       = "sbnet1"
    rg_name          = "RG-Splunk"
    location         = "CentralIndia"
    vnet_name        = "vnet-B"
    address_prefixes = ["10.0.0.0/24"]
  }

  sbnet1 = {
    sbnet_name       = "sbnet2"
    rg_name          = "RG-Splunk"
    location         = "CentralIndia"
    vnet_name        = "vnet-B"
    address_prefixes = ["10.0.1.0/16"]
  }
}

vms = {
  vm1 = {
    pip_name   = "PIP-B"
    rg_name    = "RG-Splunk"
    location   = "CentralIndia"
    nic_name   = "nic-B"
    vm_name    = "VM-Splunk"
    size       = "Standard_F2"
    sbnet_name = "sbnet1"
    vnet_name  = "vnet-B"
  }
    vm2 = {
    pip_name   = "PIP-B"
    rg_name    = "RG-Splunkfwd"
    location   = "CentralIndia"
    nic_name   = "nic-B"
    vm_name    = "VM-Splunk"
    size       = "Standard_F2"
    sbnet_name = "sbnet2"
    vnet_name  = "vnet-B"
  }
}
