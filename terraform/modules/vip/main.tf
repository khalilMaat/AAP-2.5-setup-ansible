# Data source to fetch the network by name
data "openstack_networking_network_v2" "network_test" {
  name = "test"
}

resource "openstack_networking_port_v2" "aap_vip_port" {
  name           = "aap-vip"
  network_id     = data.openstack_networking_network_v2.network_test.id
  admin_state_up = "true"
}

# Allocate a floating IP and associate it with the VIP port
resource "openstack_networking_floatingip_v2" "aap_fip" {
  pool = var.floating_ip_pool
}

resource "openstack_networking_floatingip_associate_v2" "vip_fip_assoc" {
  floating_ip = openstack_networking_floatingip_v2.aap_fip.address
  port_id     = openstack_networking_port_v2.aap_vip_port.id
}
