resource "spacelift_stack" "zone" {
  administrative = true
  autodeploy     = true
  branch         = "master"
  description    = "Zone Terraform repository for continuing the demo. Creates tf-demo-hub-* and tf-demo-spoke-*."
  name           = "${var.resource_prefix}zone"
  repository     = "${var.resource_prefix}zone"
}
