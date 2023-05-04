



resource "azurerm_resource_group" "iac" {
  name     = "demo-resource-group"
  location = "West Europe"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "demo-network"
  resource_group_name = azurerm_resource_group.iac.name
  location            = azurerm_resource_group.iac.location
  address_space       = ["20.0.0.0/16"]
}