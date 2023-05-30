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