resource "azurerm_resource_group" "example" {
  name     =  var.rgname
  location =  var.location
tags = var.tagging
}
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnetname
  address_space =  var.address_space
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}
resource "azurerm_subnet" "subnetname" {
  name                 = var.subnetname
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.address_prefixes

}
resource "azurerm_network_interface" "example" {
  name                = var.nicname
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnetname.id
    private_ip_address_allocation = "Dynamic"
  }
}