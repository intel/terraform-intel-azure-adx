output "kusto_resourcegroup_name" {
  description = "Kusto Cluster Resource Group Name"
  value       = azurerm_kusto_database.kustodatabase.resource_group_name
}

output "kusto_sku" {
  description = "Kusto Cluster SKU"
  value       = azurerm_kusto_cluster.kustocluster.sku 
}

output "kusto_cluster_cluster_name" {
  description = "Kusto Cluster Name"
  value       = azurerm_kusto_database.kustodatabase.cluster_name
}

output "kusto_database_name" {
  description = "Kusto Database Name"
  value       = azurerm_kusto_database.kustodatabase.name
}

