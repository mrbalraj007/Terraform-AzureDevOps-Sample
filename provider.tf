terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">=0.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Configure the Azure DevOps Provider
provider "azuredevops" {
  org_service_url       = "https://dev.azure.com/YOUR_ORG_NAME"
  personal_access_token = var.azuredevops_pat
}