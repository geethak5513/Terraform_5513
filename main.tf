resource "azurerm_resource_group" "rg1" {
  name     = "myresource_group"
  location = "West Europe"
}
resource "azurerm_virtual_network" "vn1" {
  name                = "myvirtual_network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
}
resource "azurerm_subnet" "sbn1" {
  name                 = "mysubnet"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vn1.name
  address_prefixes     = ["10.0.2.0/24"]
}
resource "azurerm_virtual_machine" "vm1" {
  name                  = "myvirtualmachine"
  location              = azurerm_resource_group.rg1.location
  resource_group_name   = azurerm_resource_group.rg1.name
  }
