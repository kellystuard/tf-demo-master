# automatically create the appropriately-named resource group in Azure
resource "azurerm_resource_group" "master" {
  name     = "${var.resource-prefix}-master"
  location = var.azure_region

  tags = {
    cost_center = each.value.cost_center
    description = "Azure Landing Zone Master"
    owner       = local.master.owner
  }
}

###
# Other Master-Specific Azure Resources would be created here
###
