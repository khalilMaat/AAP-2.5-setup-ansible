terraform {
  required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "~> 3.18"
    }
  }
}

# Vault Provider
provider "vault" {
  address         = var.vault_address
  token           = var.vault_token
  skip_tls_verify = true
}

# Fetch OpenStack secrets from Vault
data "vault_generic_secret" "openstack_secret" {
  path = "terraform/openstack"
}

# OpenStack Provider
provider "openstack" {
  auth_url            = data.vault_generic_secret.openstack_secret.data["auth_url"]
  user_name           = data.vault_generic_secret.openstack_secret.data["user"]
  password            = data.vault_generic_secret.openstack_secret.data["password"]
  tenant_name         = var.project_name
  region              = var.region
  user_domain_name    = data.vault_generic_secret.openstack_secret.data["user_domain_name"]
  project_domain_name = data.vault_generic_secret.openstack_secret.data["project_domain_name"]
  insecure            = true
}
