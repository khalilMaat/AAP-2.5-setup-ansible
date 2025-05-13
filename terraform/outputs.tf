# Controller outputs
output "controller_id" {
  description = "ID of the controller instance"
  value       = module.compute.controller_id
}

output "controller_floating_ip" {
  description = "ID of the controller instance"
  value       = module.compute.controller_floating_ip
}

# Gateway1 outputs
output "gateway1_id" {
  description = "ID of the gw1 instance"
  value       = module.compute.gateway1_id
}

output "gateway1_floating_ip" {
  description = "ID of the gw1 instance"
  value       = module.compute.gateway1_floating_ip
}

# Gateway2 outputs
output "gateway2_id" {
  description = "ID of the gw2 instance"
  value       = module.compute.gateway2_id
}

output "gateway2_floating_ip" {
  description = "ID of the gw2 instance"
  value       = module.compute.gateway2_floating_ip
}

# VIP outputs
output "aap_vip_port_ip" {
  description = "port fixed ip"
  value       = module.vip.port_fixed_ip
}

output "aap_vip_floating_ip" {
  description = "AAP floating ip address"
  value       = module.vip.floating_ip_address
}
