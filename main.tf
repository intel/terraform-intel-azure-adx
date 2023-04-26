#You will need to specify a pre-existing Azure Resource Gorup in the Region you want to deploy the Azure Data Explorer Cluter into
data "azurerm_resource_group" "kustorg" {
  name = var.resource_group_name
}

data "azurerm_client_config" "current" {}

#This will deploy V3 of the Azure Data Explorer aka Kusto Cluster in Azure
#You can sepcify Intel Recommended ADX SKU- (See README.MD for details) the default is Standard_E2d_v5
#Default configuration for ADX Cluster is to have Auto-Scaling Turned ON with min of 2 and max of 4 instances
#Make sure to set your owner to your own value
resource "azurerm_kusto_cluster" "kustocluster" {
  name                = "dskustocluster"
  location            = data.azurerm_resource_group.kustorg.location
  resource_group_name = data.azurerm_resource_group.kustorg.name
  engine              = "V3"

  sku {
    name     = var.adx_sku
  }
  
  
  optimized_auto_scale {
    minimum_instances     = 2
    maximum_instances = 4
  }

  tags = {
    "Owner"     = "dave.shrestha@intel.com"
 }
}

resource "azurerm_kusto_cluster_principal_assignment" "kustoprincipal" {
  name                = "KustoPrincipalAssignment"
  resource_group_name = data.azurerm_resource_group.kustorg.name
  cluster_name        = azurerm_kusto_cluster.kustocluster.name

  tenant_id      = data.azurerm_client_config.current.tenant_id
  principal_id   = var.principal_id
  principal_type = "User"
  role           = "AllDatabasesAdmin"

}
  
resource "azurerm_kusto_database" "kustodatabase" {
  name                = "dskustodatabase"
  resource_group_name = data.azurerm_resource_group.kustorg.name
  location            = data.azurerm_resource_group.kustorg.location
  cluster_name        = azurerm_kusto_cluster.kustocluster.name

  hot_cache_period   = "P7D"
  soft_delete_period = "P31D"
}