output "kusto_sku" {
  description = "Kusto Cluster SKU"
  value       = azurerm_kusto_cluster.kustocluster.sku 
}

output "kusto_cluster_uri" {
  description = "Kusto Cluster URI"
  value       = azurerm_kusto_cluster.kustocluster.uri
}

output "kusto_cluster_data_ingestion_uri" {
  description = "Kusto Cluster Data Ingetstion URI"
  value       = azurerm_kusto_cluster.kustocluster.data_ingestion_uri
}

