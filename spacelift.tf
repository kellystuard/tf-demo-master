resource "spacelift_stack" "zone" {
  name = "${var.resource_prefix}zone"

  administrative = true
  autodeploy     = true
  branch         = "main"
  description    = "Zone Terraform repository for continuing the demo. Creates tf-demo-hub-* and tf-demo-spoke-*."
  repository     = "${var.resource_prefix}zone"

  github_enterprise {
    namespace = "kellystuard"
  }
}
