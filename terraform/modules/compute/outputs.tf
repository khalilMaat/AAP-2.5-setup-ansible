# Controller outputs:
output "controller_id" {
  description = "ID of the created controller"
  value       = openstack_compute_instance_v2.controller-vm.id
}

output "controller_floating_ip" {
  description = "Public IP address of the instance"
  value       = openstack_networking_floatingip_v2.fip_1.address
}

output "controller_eth0_ip" {
  description = "Private IP on eth0 of controller"
  value       = openstack_compute_instance_v2.controller-vm.network[0].fixed_ip_v4
}

output "controller_eth1_ip" {
  description = "Private IP on eth1 of controller"
  value       = openstack_compute_instance_v2.controller-vm.network[1].fixed_ip_v4
}

# Gateway outputs:
output "gateway1_id" {
  description = "ID of the created gateway1"
  value       = openstack_compute_instance_v2.gateway1-vm.id
}

output "gateway1_floating_ip" {
  description = "Public IP address of gateway1"
  value       = openstack_networking_floatingip_v2.fip_2.address
}

output "gateway1_eth0_ip" {
  description = "Private IP on eth0 of gateway1"
  value       = openstack_compute_instance_v2.gateway1-vm.network[0].fixed_ip_v4
}

output "gateway1_eth1_ip" {
  description = "Private IP on eth1 of gateway1"
  value       = openstack_compute_instance_v2.gateway1-vm.network[1].fixed_ip_v4
}

# Gateway2 outputs
output "gateway2_id" {
  description = "ID of the created gateway2"
  value       = openstack_compute_instance_v2.gateway2-vm.id
}

output "gateway2_floating_ip" {
  description = "Public IP address of gateway2"
  value       = openstack_networking_floatingip_v2.fip_3.address
}

output "gateway2_eth0_ip" {
  description = "Private IP on eth0 of gateway2"
  value       = openstack_compute_instance_v2.gateway2-vm.network[0].fixed_ip_v4
}

output "gateway2_eth1_ip" {
  description = "Private IP on eth1 of gateway2"
  value       = openstack_compute_instance_v2.gateway2-vm.network[1].fixed_ip_v4
}

