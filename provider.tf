terraform {
    # see https://github.com/hashicorp/terraform/tree/v1.0.8/website/docs/cli
    required_version = "1.0.8"
    required_providers {
        # see https://registry.terraform.io/providers/digitalocean/digitalocean/2.14.0/docs
        digitalocean = {
            source = "digitalocean/digitalocean"
            version = "2.14.0"
        }
    }
}

provider "digitalocean" {
  token = var.do_token
  api_endpoint = var.do_api_endpoint
}