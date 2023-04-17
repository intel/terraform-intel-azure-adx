data "azurerm_resource_group" "kustorg" {
  name = var.resource_group_name
}

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
resource "azurerm_kusto_database" "kustodatabase" {
  name                = "dskustodatabase"
  resource_group_name = data.azurerm_resource_group.kustorg.name
  location            = data.azurerm_resource_group.kustorg.location
  cluster_name        = azurerm_kusto_cluster.kustocluster.name

  hot_cache_period   = "P7D"
  soft_delete_period = "P31D"
}
