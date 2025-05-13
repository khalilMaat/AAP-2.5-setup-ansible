# Controller instance
resource "openstack_compute_instance_v2" "controller-vm" {
  name            = "aap-controller"
  image_id        = var.image_id
  flavor_id       = var.flavor_id
  security_groups = var.security_groups

  # interface eth0
  network {
    name = var.network_name_1
  }

  # interface eth1
  network {
    name = var.network_name_2
  }

  user_data = var.user_data
}

# Gateway1 instance
resource "openstack_compute_instance_v2" "gateway1-vm" {
  name            = "aap-gw-1"
  image_id        = var.image_id
  flavor_id       = var.flavor_id
  security_groups = var.security_groups

  # interface eth0
  network {
    name = var.network_name_1
  }

  # interface eth1
  network {
    name = var.network_name_2
  }

  user_data = var.user_data
}

# Gateway2 instance
resource "openstack_compute_instance_v2" "gateway2-vm" {
  name            = "aap-gw-2"
  image_id        = var.image_id
  flavor_id       = var.flavor_id
  security_groups = var.security_groups

  # interface eth0
  network {
    name = var.network_name_1
  }

  # interface eth1
  network {
    name = var.network_name_2
  }

  user_data = var.user_data
}

# Floating IPs
resource "openstack_networking_floatingip_v2" "fip_1" {
  pool = var.floating_ip_pool
}

resource "openstack_networking_floatingip_v2" "fip_2" {
  pool = var.floating_ip_pool
}

resource "openstack_networking_floatingip_v2" "fip_3" {
  pool = var.floating_ip_pool
}

# Associations
resource "openstack_compute_floatingip_associate_v2" "fip_assoc_1" {
  floating_ip = openstack_networking_floatingip_v2.fip_1.address
  instance_id = openstack_compute_instance_v2.controller-vm.id
}

resource "openstack_compute_floatingip_associate_v2" "fip_assoc_2" {
  floating_ip = openstack_networking_floatingip_v2.fip_2.address
  instance_id = openstack_compute_instance_v2.gateway1-vm.id
}

resource "openstack_compute_floatingip_associate_v2" "fip_assoc_3" {
  floating_ip = openstack_networking_floatingip_v2.fip_3.address
  instance_id = openstack_compute_instance_v2.gateway2-vm.id
}
