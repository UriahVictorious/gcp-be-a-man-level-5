# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance_template

resource "google_compute_instance_template" "uriah-instance-template" { # Update
  name         = "uriah-instance-template"                 # Update
  description  = "uriah instance template"                 # Update
  machine_type = "e2-medium"
  region       = "us-south1"                     # Update

  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  network_interface {
    subnetwork = google_compute_subnetwork.uriah-subnet.id  # Update
    access_config {}
  }

  tags = ["uriah"]

  metadata_startup_script = file("./uriah.sh")              # Update
}

