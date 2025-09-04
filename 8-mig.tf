# https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_zones

resource "google_compute_region_instance_group_manager" "uriah" { # Update
  name               = "uriah-mig"                          # Update
  region             = "us-south1"
  base_instance_name = "uriah"                              # Update
  target_size        = 2

  version {
    instance_template = google_compute_instance_template.uriah-instance-template.self_link
  } # Update

  distribution_policy_zones = [
    "us-south1-a",                                # Update
    "us-south1-b"                                 # Update
    ]

  named_port {
    name = "http"
    port = 80
  }

  auto_healing_policies {
  health_check      = google_compute_health_check.tsa-health-check.id
  initial_delay_sec = 180
  }
}

