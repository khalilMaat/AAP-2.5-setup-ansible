# variable "instance_name" {
#   description = "Name of the instance"
#   type        = string
# }

variable "image_id" {
  description = "OpenStack image ID"
  type        = string
}

variable "flavor_id" {
  description = "OpenStack flavor ID"
  type        = string
}

variable "security_groups" {
  description = "List of security groups"
  type        = list(string)
}

variable "network_name_1" {
  description = "Network name for the instance"
  type        = string
}


variable "network_name_2" {
  description = "Network name for kube-sys"
  type        = string
}

variable "floating_ip_pool" {
  description = "Pool for floating IP allocation"
  type        = string
}

variable "user_data" {
  description = "Cloud-init user data"
  type        = string
  default     = ""
}
