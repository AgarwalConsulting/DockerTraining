resource "google_compute_instance" "gcp_vm_101" {
  project      = var.project_id
  zone         = var.zone
  name         = var.vm_name
  machine_type = "n1-standard-4"

  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network       = "default"
    access_config {
    }
  }

  metadata_startup_script = data.template_cloudinit_config.config.rendered

  metadata = {
    ssh-keys = "gcp:${file(var.publickeyfile)}"
  }

  tags = [
    "http-server",
  ]
}

resource "google_compute_firewall" "http-server" {
  project = var.project_id
  name    = "gcpvm101rule"
  network = "default"

  allow {
    protocol = "tcp"
    ports = [
      "80",
      "8080",
      "8000",
      "5000",
    ]
  }

  // Allow traffic from everywhere to instances with an http-server tag
  source_ranges = [
    "0.0.0.0/0",
  ]
  target_tags = [
    "http-server",
  ]
}

# Render a multi-part cloud-init config making use of the part
# above, and other source files
data "template_cloudinit_config" "config" {
  gzip          = false
  base64_encode = false

  part {
    filename     = "script-rendered.sh"
    content_type = "text/x-shellscript"
    content      = templatefile("${path.module}/vmsetup.tpl", {
      project_id             = var.project_id
      region                 = var.region
      zone                   = var.zone
    })
  }
}
