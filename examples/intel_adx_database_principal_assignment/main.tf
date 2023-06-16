## This module deploys a Azure Data Explorer with assigned pricipal in a user provided resource group
## 'principal_id' should be the Azure AD Object ID of the User or Service Principal to grant access to the cluster and database. It should already exist, ex: 4631d538-f3e8-3457-b155-802b52e432525(this is a fake id)

module "azure-dataexplorer" {
  source                = "intel/azure-adx/intel"
  resource_group_name   = "DS-KUSTO-RG1"
  adx_sku               = "Standard_E8d_v5"
  principal_id          = "4631d538-f3e8-3457-b155-802b52e432525"
  tags = {
    Owner    = "user@company.com"
    Duration = "4"
  }
}
