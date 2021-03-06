resource "google_compute_firewall" "nat-to-sendgrid" {
  name    = "${var.prefix}nat-to-sendgrid"
  network = "${var.network}"

  direction = "EGRESS"

  destination_ranges = ["159.122.224.196/32", "159.122.224.197/32"]

  allow {
    protocol = "tcp"
    ports    = ["2525"]
  }

  target_tags = ["nat"]
}
