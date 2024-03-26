output "zone_resource_group_name" {
  description = "Name of resource group used to create the zone."
  value       = azurerm_resource_group.zone.name
}
