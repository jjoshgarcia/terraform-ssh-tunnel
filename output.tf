
output "port" {
  value = (local.do_tunnel ? var.local_port : var.target_port)
  description = "Port number to connect to"
}

output "host" {
  value = (local.do_tunnel ? data.external.ssh_tunnel[0].result.host : var.target_host)
  description = "Host to connect to"
}

