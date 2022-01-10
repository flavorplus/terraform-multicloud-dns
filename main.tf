terraform {
  required_version = ">= 1.1.3"
  required_providers {
    aws     = {
      source = "hashicorp/aws"
      version = ">= 3.71.0"
    }
    google  = {
      source = "hashicorp/google"
      version = ">= 3.77.0"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.91.0"
    }
  }
}

provider "aws" {
  region  = "eu-central-1"   # region is required but doesnt matter
}
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
}
