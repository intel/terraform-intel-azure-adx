data "azurerm_resource_group" "azure-kusto" {
  name = var.resource_group_name
}

resource "azurerm_kusto_cluster" "azure-kusto" {
  name                = "shresthakustocluster"
  location            = data.azurerm_resource_group.azure-kusto.location
  resource_group_name = data.azurerm_resource_group.azure-kusto.name

  sku {
    name     = "Standard_D13_v2"
    capacity = 2
  }

  tags = {
    "Owner"     = "dave.shrestha@intel.com"
 }
}