# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "odin-recipes" {
  name = "odin-recipes"
  location = "northcentralus"
}

resource "azurerm_storage_account" "odin-recipes-01929317" {
  name = "odin-recipes-01929317"
  location = "northcentralus"
  resource_group_name = azurerm_resource_group.odin-recipes.name
  account_tier = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "web" {
  name = "$web"
  storage_account_name = azurerm_storage_account.odin-recipes-01929317.name
  container_access_type = "blob"
}