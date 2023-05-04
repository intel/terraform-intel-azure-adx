output "kusto_sku" {
  description = "Kusto Cluster SKU"
  value       = module.azure-dataexplorer.kusto_sku
}

output "kusto_cluster_uri" {
  description = "Kusto Cluster URI"
  value       = module.azure-dataexplorer.kusto_cluster_uri
}

output "kusto_cluster_data_ingestion_uri" {
  description = "Kusto Data Ingestion URI"
  value       = module.azure-dataexplorer.kusto_cluster_data_ingestion_uri
}

output "kusto_cluster_name" {
  description = "Name of the Kusto Cluster"
  value       = module.azure-dataexplorer.kusto_cluster_name
}

output "kusto_cluster_principal_name" {
  description = "Name of the Kusto Cluster Principle"
  value       = module.azure-dataexplorer.kusto_cluster_principal_name
}

output "kusto_rg_name" {
  description = "Name of the Kusto Cluster Resource Group"
  value       = module.azure-dataexplorer.kusto_rg_name
}

output "kusto_tenant_id" {
  description = "ID of the Kusto Cluster Principle"
  value       = module.azure-dataexplorer.kusto_tenant_id
}

output "kusto_tenant_name" {
  description = "Name of the Kusto Cluster Principle"
  value       = module.azure-dataexplorer.kusto_tenant_name
}