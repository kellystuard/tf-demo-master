resource "spacelift_stack" "zone" {
  autodeploy        = true
  branch            = "master"
  description       = "Zone Terraform repository for continuing the demo. Creates tf-demo-hub-* and tf-demo-spoke-*."
  name              = "${var.resource_prefix}zone"
  project_root      = "tf-demo"
  repository        = "github-kellystuard"
  terraform_version = "1.5.7"
}
