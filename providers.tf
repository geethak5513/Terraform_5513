terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
provider "azurerm" {
  features {}
  client_id       = "00000000-0000-0000-0000-000000000000"
  client_secret   = var.client_secret
  tenant_id       = "9a8cd433-6113-49e5-aa7f-42788a01a246"
  subscription_id = "20000000-0000-0000-0000-000000000000"
}
