
#Terraform provider requirements and versions
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.26.0"
    }
  }
}

#Configures the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
