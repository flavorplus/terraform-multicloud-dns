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
