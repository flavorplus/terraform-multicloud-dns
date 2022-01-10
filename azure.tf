#Azure SUBZONE
provider "azurerm" {
   features {}
   subscription_id = var.subscription_id
   tenant_id       = var.tenant_id
   client_id       = var.client_id
   client_secret   = var.client_secret
}

resource "azurerm_resource_group" "dns_resource_group" {
  count    = var.create_azure_dns_zone ? 1 : 0
  name     = "${var.namespace}DNSrg"
  location = var.azure_location
  tags = {
    name        = var.namespace
    owner       = var.owner
    created-by  = var.created-by
    DoNotDelete = true
  }
}

resource "azurerm_dns_zone" "azure_sub_zone" {
  count               = var.create_azure_dns_zone ? 1 : 0
  name                = "${var.namespace}.azure.${var.hosted-zone}"
  resource_group_name = azurerm_resource_group.dns_resource_group.0.name
  tags = {
    name        = var.namespace
    owner       = var.owner
    created-by  = var.created-by
    DoNotDelete = true
  }
}
