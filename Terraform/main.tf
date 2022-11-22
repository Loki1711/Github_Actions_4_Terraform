data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "resource_group" {
  name     = var.rgname
  location = var.location
  tags     = var.tag
}