data "azurerm_kusto_cluster" "example" {
  name                = "kustocluster"
  resource_group_name = "test_resource_group"
}

#Azure ADX Cluster
resource "azurerm_resource_group" "example" {
  name     = "my-kusto-cluster-rg"
  location = "East US"
}

resource "azurerm_kusto_cluster" "example" {
  name                = "kustocluster"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku {
    name     = "Standard_D13_v2"
    capacity = 2
  }

  tags = {
    Owner = "dave.shrestha@intel.com"
  }
}
