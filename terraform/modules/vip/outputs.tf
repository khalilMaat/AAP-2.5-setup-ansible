output "port_fixed_ip" {
  description = "The private (fixed) IP address assigned to the VIP port"
  value       = openstack_networking_port_v2.aap_vip_port.all_fixed_ips
}

output "floating_ip_address" {
  description = "Public floating IP address associated with the VIP port"
  value       = openstack_networking_floatingip_v2.aap_fip.address
}
