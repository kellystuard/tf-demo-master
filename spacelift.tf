data "spacelift_azure_integration" "default" {
  name = "Azure (kellystuard)"
}

resource "spacelift_stack" "zone" {
  name = "${var.resource_prefix}zone"

  administrative = true
  autodeploy     = true
  branch         = "main"
  description    = "Zone Terraform repository for continuing the demo. Creates tf-demo-hub-* and tf-demo-spoke-*."
  labels         = ["tf-demo"]
  repository     = "${var.resource_prefix}zone"
  space_id       = "root"

  terraform_smart_sanitization = true

  github_enterprise {
    namespace = "kellystuard"
  }
}

resource "spacelift_azure_integration_attachment" "zone" {
  integration_id = data.spacelift_azure_integration.default.id
  stack_id       = spacelift_stack.zone.id
}
