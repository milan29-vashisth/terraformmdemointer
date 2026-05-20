terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.73"
    }
  }
   backend "azurerm" {
    resource_group_name  = "tf-backend-fordemopratice-rg"
    storage_account_name = "tfstate12345milan"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
