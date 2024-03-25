variable "terraform_provider" {
  type        = string
  description = "Provider of Terraform Orchestration. Valid values for terraform_provider are (spacelift, terraform)."

  validation {
    condition     = contains(["spacelift", "terraform"], var.terraform_provider)
    error_message = "Valid values for terraform_provider are (spacelift, terraform)."
  }
}

variable "azure_region" {
  type        = string
  description = "Region to provision master resources into."
}

variable "resource-prefix" {
  type        = string
  description = "Prefix to use for unique resources, such as workspace and resource group names."

  default = "tf-demo-"
}
