# Call ALL module
module "compute" {
  source = "./modules/compute"
  # instance_name    = var.instance_name
  image_id         = var.image_id
  flavor_id        = var.flavor_id
  security_groups  = var.security_groups
  network_name_1   = var.network_name_1
  network_name_2   = var.network_name_2
  floating_ip_pool = var.floating_ip_pool
  user_data        = file("./cloud-init.yaml")
}

module "vip" {
  source           = "./modules/vip"
  floating_ip_pool = var.floating_ip_pool
}
