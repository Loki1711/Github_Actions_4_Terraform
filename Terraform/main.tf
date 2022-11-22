resource "azurerm_resource_group" "resource_group" {
  name     = var.rgname
  location = var.location
  tags     = var.tag
}

resource "azurerm_virtual_network" "vnet" {
name                = "github-action-vnet"
address_space       = "10.0.0.0/16"
location            = azurerm_resource_group.resource_group.location
resource_group_name = azurerm_resource_group.resource_group.name
tags                = var.tag
}