output "kusto_sku {
  description = "ID of the Kusto Cluster SKU"
  value       = azurerm_kusto_cluster.kustocluster.sku 
}

output "kusto_cluster_uri {
  description = "ID of the Kusto Cluster URI"
  value       = azurerm_kusto_cluster.kustocluster.uri
}

output "kusto_cluster_data_ingestion_uri {
  description = "ID of the Kusto Cluster URI"
  value       = azurerm_kusto_cluster.kustocluster.data_ingestion_uri
}

