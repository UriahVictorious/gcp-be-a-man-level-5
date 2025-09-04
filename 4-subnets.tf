# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork

resource "google_compute_subnetwork" "uriah-subnet" {      # Update
  name                     = "uriah-subnet"                # Update
  ip_cidr_range            = "10.25.0.0/24"               # Update
  region                   = "us-south1"         # Update
  network                  = google_compute_network.uriah-vpc.id # Update
  private_ip_google_access = true
}

