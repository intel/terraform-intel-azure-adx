output "kusto_sku {
  description = "ID of the Kusto Cluster SKU"
  value       = azurerm_kusto_cluster.kustocluster.sku 
}

output "kusto_cluster_uri {
  description = "ID of the Kusto Cluster URI"
  value       = azurerm_kusto_cluster.kustocluster.uri
}

output "kusto_cluster_data_ingestion_uri {
  description = "Kusto Data Ingestion URI"
  value       = azurerm_kusto_cluster.kustocluster.data_ingestion_uri
}

output "kusto_cluster_name" {
  description = "Name of the Kusto Cluster"
  value       = azurerm_kusto_cluster_principal_assignment.kustoprincipal.cluster_name"
}

output "kusto_cluster_principal_name" {
  description = "Name of the Kusto Cluster Principle"
  value       = azurerm_kusto_cluster_principal_assignment.kustoprincipal.principal_name
}

output "kusto_rg_name" {
  description = "Name of the Kusto Cluster Resource Group"
  value       = azurerm_kusto_cluster_principal_assignment.kustoprincipal.resource_group_name
}

output "kusto_tenant_id" {
  description = "ID of the Kusto Cluster Principle"
  value       = azurerm_kusto_cluster_principal_assignment.kustoprincipal.tenant_id"

output "kusto_tenant_name" {
  description = "Name of the Kusto Cluster Principle"
  value       = azurerm_kusto_cluster_principal_assignment.kustoprincipal.tenant_name
