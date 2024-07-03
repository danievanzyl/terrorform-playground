terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = ">=2.9.0"
    }
  }
}

provider "proxmox" {
  pm_api_url          = "${local.env["BASEAPI_URL"]}/api2/json"
  pm_api_token_id     = local.env["TOKEN_ID"]
  pm_api_token_secret = local.env["TOKEN_SECRET"]
}
