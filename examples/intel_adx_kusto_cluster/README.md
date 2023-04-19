<p align="center">
  <img src="./images/logo-classicblue-800px.png" alt="Intel Logo" width="250"/>
</p>

# Intel® Cloud Optimization Modules for Terraform

© Copyright 2022, Intel Corporation

## Azure Data Explorer
The module can deploy an Azure Data Explorer cluster on Intel recommended Azure instances. Instance Selection have been defaulted in the code.

**Learn more about Itel Recommended Instances:**
[OLTP Performance on Azure ESV5 Instances](https://www.intel.com/content/www/us/en/partner/workload/microsoft/sql-server-oltp-azure-esv5-benchmark.html)
[Gen-on-Gen perormance improvement of Azure D-series instances](https://www.intel.com/content/www/us/en/partner/workload/microsoft/azure-dv4-vms-outperform-dv3-benchmark.html)
[Gen-on-Gen performance improvement of Azure Ls-series instances](https://www.intel.com/content/www/us/en/partner/workload/microsoft/data-analytics-azure-lsv3-vs-lsv1-benchmark.html)
[SQL Server performance on Intel Intances](https://www.intel.com/content/www/us/en/partner/workload/microsoft/sql-analysis-127-faster-on-azure-benchmark.html)
[SQL Server Snapshot](https://www.intel.com/content/www/us/en/partner/workload/microsoft/msft-sql-server-snapshot.html)

## Usage

See examples folder for code ./examples/intel_adx_database_principal_assignment/main.tf

All the examples in example folder shows how to create an Azure Data Explorer clusterusing this module. Additionally, some of the examples display how to create an Azure Data Explorer cluster with cluser principal assignment, a cluster with database and a cluster with database with principal assignments.

**Usage Considerations**

<p>

* **Prerequisites:**

  1. Have an existing Azure Resource Group in the region you want to deploy the Azure Data Explorer cluster 

Run Terraform

```hcl
terraform init  
terraform plan
terraform apply

```

Note that this example may create resources. Run `terraform destroy` when you don't need these resources anymore.

## Considerations  
More Information regarding deploying Azure Data Explorer can be found here:[Azure Data Explorer](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kusto_database_principal_assignment#attributes-reference)
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [aws](#requirement\_aws) | ~> 3.52.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.4.3 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [aws](#requirement\_aws) | ~> 3.52.0 |
| <a name="provider_random"></a> [random](#provider\_random) | ~> 3.4.3 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.9.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gis"></a> [gis](#module\_gis) | ./global_init_scripts | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name\_arn) | The name of the Azure Resoure Group that will be used to deploy Azure Data Explorer cluster and related resources. This Resource Group should already exist. | `string` | `""` | Yes |
| <a name="sku"></a> [sku](#input\_sku) | The sku for the Azure Data Explorer cluser instances. Intel recommendation is to use Standard_ SKUs for compute and storage optimazed instances. | `string` | `"Standard_E8d_v5"` | Yes |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kusto_sku"></a> [kusto\_sku](#output\_kusto\_sku) | Kusto Cluster SKU. |
| <a name="output_kusto_cluster_uri"></a> [kusto\_cluster\_uri](#output\_kusto\_cluster\_uri) | Kusto Cluster URI. |
| <a name="output_kusto_cluster_data_ingestion_uri"></a> [dbx\_create\_bucket](#output\_dbx\_create\_bucket) | Kusto Data Ingestion URI. |
<!-- END_TF_DOCS -->