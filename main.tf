data "azurerm_kusto_cluster" "example" {
  name                = "kustocluster"
  resource_group_name = "test_resource_group"
}

resource "azurerm_resource_group" "example" {
  name     = "my-kusto-cluster-rg"
  location = "West Europe"
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
    Environment = "Production"
  }
}
