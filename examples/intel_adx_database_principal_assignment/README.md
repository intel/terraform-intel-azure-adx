<p align="center">
  <img src="https://github.com/intel/terraform-intel-azure-adx/images/logo-classicblue-800px.png" alt="Intel Logo" width="250"/>
</p>

# Intel® Cloud Optimization Modules for Terraform

© Copyright 2022, Intel Corporation

## Azure Data Explorer
The module can deploy an Azure Data Explorer cluster on Intel recommended Azure instances. Instance Selection have been defaulted in the code. 

For Compute Optimized instances, we recommend:
Standard_E2d_v5 (default)
Standard_E4d_v5 
Standard_E8d_v5 
Standard_E16d_v5 

For Storage Optimized instances, we recommend:
Standard_L8sv3 
Standard_L16sv3 
Standard_L32sv3 
Standard_E2sv5 
Standard_E4sv5
Standard_E8sv5
Standard_E16sv5

For Isolated instances, we recommend:
E80idsv4 

Edv5-series virtual machines run on the 3rd Generation Intel® Xeon® Platinum 8370C (Ice Lake) processor reaching an all core turbo clock speed of up to 3.5 GHz. These virtual machines offer up to 104 vCPU and 672 GiB of RAM and fast, local SSD storage up to 3800 GiB. Edv5-series virtual machines are ideal for memory-intensive enterprise applications and applications that benefit from low latency, high-speed local storage.

Esv5-series virtual machines run on the 3rd Generation Intel® Xeon® Platinum 8370C (Ice Lake) processor reaching an all core turbo clock speed of up to 3.5 GHz. These virtual machines offer up to 104 vCPU and 672 GiB of RAM. Esv5-series virtual machines don't have temporary storage thus lowering the price of entry.

The Lsv3-series of Azure Virtual Machines (Azure VMs) features high-throughput, low latency, directly mapped local NVMe storage. These VMs run on the 3rd Generation Intel® Xeon® Platinum 8370C (Ice Lake) processor in a hyper-threaded configuration. This new processor features an all-core turbo clock speed of 3.5 GHz with Intel® Turbo Boost Technology, Intel® Advanced-Vector Extensions 512 (Intel® AVX-512) and Intel® Deep Learning Boost.

## Performance Data

<center>

#### [SQL OLTP Performance on Azure Es_v5-series instances](https://www.intel.com/content/www/us/en/partner/workload/microsoft/sql-server-oltp-azure-esv5-benchmark.html)

<p align="center">
  <a href="https://www.intel.com/content/www/us/en/partner/workload/microsoft/sql-server-oltp-azure-esv5-benchmark.html">
  <img src="https://github.com/intel/terraform-intel-azure-adx/images/Esv5_vs_Esv4_SQL.png?raw=true" alt="ADX" width="600"/>
  </a>
</p>

#

#### [Microsoft SQL Server Overview and Benefits on Eds_v5 Intel](https://www.intel.com/content/www/us/en/partner/workload/microsoft/msft-sql-server-snapshot.html)

<p align="center">
  <a href="https://www.intel.com/content/www/us/en/partner/workload/microsoft/msft-sql-server-snapshot.html">
  <img src="https://github.com/intel/terraform-intel-azure-adx/images/Edsv5_vs_Edsv4_SQL.png?raw=true" alt="ADX" width="600"/>
  </a>
</p>
#### [MySQL Server performance on Dds_v5 Intel Intances vs Dds_v4 Instances](https://www.intel.com/content/www/us/en/partner/workload/microsoft/sql-analysis-127-faster-on-azure-benchmark.html)

<p align="center">
  <a href="https://www.intel.com/content/www/us/en/partner/workload/microsoft/sql-analysis-127-faster-on-azure-benchmark.html">
  <img src="https://github.com/intel/terraform-intel-azure-adx/images/Ddsv5_vs_Ddsv4_MySQL.png?raw=true" alt="ADX" width="600"/>
  </a>
</p>

#
#### [Gen-on-Gen MySQL perormance improvement of Azure Dv4-series instances vs Dv3 Instances](https://www.intel.com/content/www/us/en/partner/workload/microsoft/azure-dv4-vms-outperform-dv3-benchmark.html)

<p align="center">
  <a href="https://www.intel.com/content/www/us/en/partner/workload/microsoft/azure-dv4-vms-outperform-dv3-benchmark.html">
  <img src="https://github.com/intel/terraform-intel-azure-adx/images/Dv4_vs_Dv3_MySQL.png?raw=true" alt="ADX2" width="600"/>
  </a>
</p>

#

#### [Gen-on-Gen performance improvement of Azure Ls-series instances](https://www.intel.com/content/www/us/en/partner/workload/microsoft/data-analytics-azure-lsv3-vs-lsv1-benchmark.html)

<p align="center">
  <a href="https://www.intel.com/content/www/us/en/partner/workload/microsoft/data-analytics-azure-lsv3-vs-lsv1-benchmark.html">
  <img src="https://github.com/intel/terraform-intel-azure-adx/images/Lsv3_vs_Lsv1_Analytics.png?raw=true" alt="ADX" width="600"/>
  </a>
</p>



</center>

## Usage

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
| <a name="input_principal_id"></a> [principal\_id](#input\_principal\_id) | The User or Principal ID to grant access to the cluster and database. The prinicpal id should already exist. | `string` | `""` | Yes |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kusto_sku"></a> [kusto\_sku](#output\_kusto\_sku) | Kusto Cluster SKU. |
| <a name="output_kusto_cluster_uri"></a> [kusto\_cluster\_uri](#output\_kusto\_cluster\_uri) | Kusto Cluster URI. |
| <a name="output_kusto_cluster_data_ingestion_uri"></a> [dbx\_create\_bucket](#output\_dbx\_create\_bucket) | Kusto Data Ingestion URI. |
| <a name="output_kusto_cluster_name"></a> [dbx\_create\_role](#output\_dbx\_create\_role) | Name of the Kusto Cluster. |
| <a name="output_kusto_cluster_principal_name"></a> [dbx\_credentials\_name](#output\_dbx\_credentials\_name) | Name of the Kusto Cluster Principle. |
| <a name="output_kusto_rg_name"></a> [dbx\_host](#output\_dbx\_host) | Name of the Kusto Cluster Resource Group. |
| <a name="output_kusto_tenant_id"></a> [dbx\_id](#output\_dbx\_id) | ID of the Kusto Cluster Principle. |
| <a name="output_kusto_tenant_name"></a> [dbx\_security\_group\_ids](#output\_dbx\_security\_group\_ids) | Name of the Kusto Cluster Principle. |
<!-- END_TF_DOCS -->