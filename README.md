<p align="center">
  <img src="https://github.com/intel/terraform-intel-azure-adx/images/logo-classicblue-800px.png" alt="Intel Logo" width="250"/>
</p>

# Intel® Cloud Optimization Modules for Terraform

© Copyright 2022, Intel Corporation

## Azure Data Explorer
The module can deploy an Azure Data Explorer cluster on Intel recommended Azure instances. Instance Selection have been defaulted in the code. This module was intended to be ran with an Intel Sentinel Policy as Code module that can be found here: https://registry.terraform.io/policies/intel/intel-azure/latest

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

#
  
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
Example of main.tf (located in the examples sub-folder)
```hcl

## This module deploys a Azure Data Explorer with assigned pricipal in a user provided resource group

module "azure-dataexplorer" {
  source                = "intel/azure-adx"
  resource_group_name   = "DS-KUSTO-RG1"
  adx_sku               = "Standard_E8d_v5"
  principal_id          = "user@company.com"
  tags = {
    Owner    = "user@company.com"
    Duration = "4"
  }
}

**Usage Considerations**

<p>

* **Prerequisites:**

  1. Have an existing Azure Resource Group in the region you want to deploy the Azure Data Explorer cluster 

# Provision Intel Cloud Optimization Module
module "module-example" {
  source = "github.com/intel/module-name"
}

```

Run Terraform

```hcl
terraform init  
terraform plan
terraform apply

```

Note that this example may create resources. Run `terraform destroy` when you don't need these resources anymore.

## Considerations  
More information regarding deploying Azure Data Explorer can be found here:[Azure Data Explorer](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kusto_database_principal_assignment#attributes-reference)
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.52.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3.52.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kusto_cluster.kustocluster](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kusto_cluster) | resource |
| [azurerm_kusto_cluster_principal_assignment.kustoprincipal](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kusto_cluster_principal_assignment) | resource |
| [azurerm_kusto_database.kustodatabase](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kusto_database) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.kustorg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_adx_sku"></a> [adx\_sku](#input\_adx\_sku) | Instance SKU, see comments above for guidance | `string` | `"Standard_E2d_v5"` | no |
| <a name="input_principal_id"></a> [principal\_id](#input\_principal\_id) | The User or Principal ID to grant access to the cluster and database. The prinicpal id should already exist | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Existing Resource Group where Azure Data Explorer reosurce will be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kusto_cluster_data_ingestion_uri"></a> [kusto\_cluster\_data\_ingestion\_uri](#output\_kusto\_cluster\_data\_ingestion\_uri) | Kusto Data Ingestion URI |
| <a name="output_kusto_cluster_name"></a> [kusto\_cluster\_name](#output\_kusto\_cluster\_name) | Name of the Kusto Cluster |
| <a name="output_kusto_cluster_principal_name"></a> [kusto\_cluster\_principal\_name](#output\_kusto\_cluster\_principal\_name) | Name of the Kusto Cluster Principle |
| <a name="output_kusto_cluster_uri"></a> [kusto\_cluster\_uri](#output\_kusto\_cluster\_uri) | Kusto Cluster URI |
| <a name="output_kusto_rg_name"></a> [kusto\_rg\_name](#output\_kusto\_rg\_name) | Name of the Kusto Cluster Resource Group |
| <a name="output_kusto_sku"></a> [kusto\_sku](#output\_kusto\_sku) | Kusto Cluster SKU |
| <a name="output_kusto_tenant_id"></a> [kusto\_tenant\_id](#output\_kusto\_tenant\_id) | ID of the Kusto Cluster Principle |
| <a name="output_kusto_tenant_name"></a> [kusto\_tenant\_name](#output\_kusto\_tenant\_name) | Name of the Kusto Cluster Principle |
<!-- END_TF_DOCS -->
