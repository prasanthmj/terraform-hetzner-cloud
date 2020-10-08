output "nodes" {
  value = {
    for k, node in hcloud_server.cloud_nodes :
    k => {
        name = node.name
        ip = node.ipv4_address
        internal_ip = var.nodes[k].private_ip
    }
  }
}

