terraform {
  required_version = ">= 0.15"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.87.0"
      
    }
   
  }
}

# Provider Block
provider "azurerm" {
 features {}          
}
resource "random_string" "myrandom" {
  length = 16
  upper = false 
  special = false
}

resource "azurerm_resource_group" "myrg1" {
  name = "myrg-1"
  location = "East US"
}
  resource "azurerm_storage_account" "mysa" {
  name                     = "${random_string.myrandom.id}"
  resource_group_name      = azurerm_resource_group.myrg1.name
  location                 = azurerm_resource_group.myrg1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
 
  }  


