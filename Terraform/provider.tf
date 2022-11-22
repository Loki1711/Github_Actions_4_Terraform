terraform {
  required_version = ">=1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.30.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "cloud-shell-storage-centralindia"
    storage_account_name = "csg10032000580a9397"
    container_name       = "terraform"
    key                  = "tf_github_action.tfstate"
  }
}

provider "azurerm" {
  features {}
}
