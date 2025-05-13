variable "vault_address" {
  description = "Vault server address"
  type        = string
  default     = "http://10.112.61.78:8200"
}

variable "vault_token" {
  description = "Vault token for authentication"
  type        = string
  default     = "hvs.Vm5HqvJjVdxxZ2H1qMgvEHvm"
}

variable "project_name" {
  description = "OpenStack project/tenant name"
  type        = string
  default     = "Openshift"
}

variable "region" {
  description = "Region"
  type        = string
  default     = "regionOne"
}

# variable "instance_name" {
#   description = "Name of the OpenStack instance"
#   type        = string
#   default     = "khalil-vm"
# }

variable "image_id" {
  description = "OpenStack image ID"
  type        = string
  default     = "8fc1743d-2042-4b44-a042-6742560da483"
}

variable "flavor_id" {
  description = "OpenStack flavor ID"
  type        = string
  default     = "d3df67eb-eaef-4d3e-8221-de9d99f46ac9"
}

variable "security_groups" {
  description = "List of security groups"
  type        = list(string)
  default     = ["test"]
}

variable "network_name_1" {
  description = "Network name for the instance"
  type        = string
  default     = "test"
}

variable "network_name_2" {
  description = "Network name for the instance"
  type        = string
  default     = "kube-sys"
}

variable "floating_ip_pool" {
  description = "Pool for floating IP allocation"
  type        = string
  default     = "public"
}
