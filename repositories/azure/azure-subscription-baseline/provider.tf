terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.75.0"
      }
    azapi = {
      source = "Azure/azapi"
      version = ">= 1.9.0"
    }
  }
    backend "azurerm" {
      resource_group_name  = "poi-iac"
      storage_account_name = "storagepoilares"
      container_name       = "poi-iac-container"
      key                  = "terraform.tfstate"
    }
  }
provider "azurerm" {
  features {}
  skip_provider_registration = false
  }
provider "azapi" {
}
