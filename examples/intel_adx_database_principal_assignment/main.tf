## This module deploys a Azure Data Explorer with assigned pricipal in a user provided resource group

module "azure-dataexplorer" {
  source                = "../../"
  resource_group_name   = "DS-KUSTO-RG1"
  adx_sku               = "Standard_E8d_v5"
  principal_id          = "dave.shrestha@intel.com"

}