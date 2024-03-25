# automatically create the appropriately-named resource group in Azure
resource "azurerm_resource_group" "master" {
  name     = "${var.resource_prefix}master"
  location = var.azure_region

  tags = {
    cost_center = local.master.cost_center
    description = "Azure Landing Zone Master"
    environment = "master"
    owner       = local.master.owner
  }
}

###
# Other Master-Specific Azure Resources would be created here
###
