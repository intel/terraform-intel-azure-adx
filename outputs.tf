output "kustorg" {
  description = "ID of the Kusto Resource Group Name"
  value       = azurerm_kusto_cluster.kustocluser.resource_group_name
}

output "adx_sku {
  description = "ID of the Kusto Database Principle Assignment"
  value       = aazurerm_kusto_cluster.kustocluster.adx_sku
}

output "tenant_name" {
  description = "ID of the Azure Tenant"
  value       = azurerm_kusto_database.kustoprincipal.tenant_id
}
output "principal_id" {
  description = "ID of the Kusto Database Principle Assignment"
  value       = azurerm_kusto_database.kustoprincipal.client_id
}

