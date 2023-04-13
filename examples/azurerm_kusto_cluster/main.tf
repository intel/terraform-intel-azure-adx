data "azurerm_resource_group" "kustorg" {
  name = var.resource_group_name
}

resource "azurerm_kusto_cluster" "kustocluster" {
  name                = "dskustocluster"
  location            = data.azurerm_resource_group.kustorg.location
  resource_group_name = data.azurerm_resource_group.kustorg.name

  sku {
    name     = "Standard_D13_v2"
  }
  
  optimized_auto_scale {
    minimum_instances     = 2
    maximum_instances = 4
  }

  tags = {
    "Owner"     = "dave.shrestha@intel.com"
 }
}