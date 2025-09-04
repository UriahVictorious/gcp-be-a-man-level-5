# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network

resource "google_compute_network" "uriah-vpc" {            # Update
  name                    = "uriah-vpc"                    # Update
  auto_create_subnetworks = false
  routing_mode = "GLOBAL"
}

