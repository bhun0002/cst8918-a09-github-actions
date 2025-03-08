terraform {
  required_version = ">= 1.0.0"
 
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
}
 
provider "azurerm" {
  features {}
}
 
resource "azurerm_resource_group" "bhun0002" {
  name     = "bhun0002-resources"
  location = "East US"
Error  1111111111
 
resource "azurerm_storage_account" "bhun0002" {
  name                     = "bhun0002storacc"
  resource_group_name      = azurerm_resource_group.bhun0002.name
  location                 = azurerm_resource_group.bhun0002.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}