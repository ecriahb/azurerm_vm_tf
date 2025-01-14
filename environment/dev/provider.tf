terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.5.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3b320a7e-555b-4ef4-8b4b-e6ea28e0828e"
}
