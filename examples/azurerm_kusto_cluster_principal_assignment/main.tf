data "azurerm_resource_group" "kustorg" {
  name = var.resource_group_name
}

data "azurerm_client_config" "current" {}

resource "azurerm_kusto_cluster" "kustocluster" {
  name                = "dskustocluster"
  location            = data.azurerm_resource_group.kustorg.location
  resource_group_name = data.azurerm_resource_group.kustorg.name

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
  principal_id   = "dave.shrestha@intel.com"
  principal_type = "User"
  role           = "AllDatabasesAdmin"

}
  