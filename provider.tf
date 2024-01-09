terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.9.14"
    }
  }
}

variable proxmox_api_url {
    type = string
}

variable "proxmox_api_token_id" {
    type = string
    sensitive = true
}

variable "proxmox_api_token_secret" {
    type = string
    sensitive = true
}

provider "proxmox" {
    pm_api_uri = var.proxmox_api_url
    pm_proxmox_api_token_id = var.proxmox_api_token_id
    pm_proxmox_api_token_secret = var.proxmox_api_token_secret

    pm_tls_insecure = true
}