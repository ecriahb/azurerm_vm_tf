terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "89a1b37c-85de-43fd-972b-3ad629ca01a1"
}