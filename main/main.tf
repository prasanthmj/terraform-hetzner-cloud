terraform {
  required_version = ">= 0.13"
}

provider "hcloud" {
}


module "hcloud" {
  source = "../modules/hcloud"

  nodes  = var.nodes
  cluster_name = var.cluster_name
  ssh_key_path = var.ssh_key_path
}




