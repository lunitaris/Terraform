## main.tf file
## DEPLOY 3 VM with virtualbox, on Network Bridge.
## MacOS (interface name is en0).
###

terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

resource "virtualbox_vm" "node00" {
  name      = "node000"
  image     = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
  cpus      = 2
  memory    = "4 gib"


  network_adapter {
    device   = "IntelPro1000MTServer"
    type     = "bridged"
    host_interface = "en0"
  }
}

resource "virtualbox_vm" "node001" {
  name      = "node001"
  image     = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
  cpus      = 2
  memory    = "4 gib"


  network_adapter {
    device   = "IntelPro1000MTServer"
    type     = "bridged"
    host_interface = "en0"
  }
}


resource "virtualbox_vm" "node002" {
  name      = "node002"
  image     = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
  cpus      = 2
  memory    = "4 gib"


  network_adapter {
    device   = "IntelPro1000MTServer"
    type     = "bridged"
    host_interface = "en0"
  }
}


