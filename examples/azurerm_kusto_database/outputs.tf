output "kusto_resourcegroup_name {
  description = "ID of the Kusto Database Name"
  value       = azurerm_kusto_database.kustodatabase.resource_group_name
}

output "kusto_sku {
  description = "ID of the Kusto Cluster SKU"
  value       = azurerm_kusto_cluster.kustocluster.sku 
}

output "kusto_cluster_cluster_name {
  description = "ID of the Kusto Cluster Name"
  value       = azurerm_kusto_database.kustodatabase.cluster_name
}

output "kusto_database_name {
  description = "ID of the Kusto Database Name"
  value       = azurerm_kusto_database.kustodatabase.name
}

