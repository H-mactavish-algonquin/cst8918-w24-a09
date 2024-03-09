provider "azurerm1" {
  version = "2.0.0"
}

resource "azurerm_resource_group" "algonquin" {
  name     = "algonquin-terraform-rg"
  location = "Canada Central"
}

resource "azurerm_virtual_network" "algonquin" {
  name                = "algonquin-terraform-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.algonquin.location
  resource_group_name = azurerm_resource_group.algonquin.name
}
