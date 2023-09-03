# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "odin-recipes" {
  name     = "odin-recipes"
  location = "northcentralus"
}

resource "azurerm_storage_account" "odinrecipes01929317" {
  name                     = "odinrecipes01929317"
  location                 = "northcentralus"
  account_kind             = "StorageV2"
  resource_group_name      = azurerm_resource_group.odin-recipes.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier              = "Hot"
  static_website {
    index_document     = "index.html"
    error_404_document = "404.html"
  }
}