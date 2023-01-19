output "rgname"{
    value = azurerm_resource_group.example.name
}
output "vnetname" {
value = azurerm_virtual_network.vnet.name
  }
 output "subnetname" {

    value = azurerm_subnet.subnetname.name
  }
 output "nicname" {

    value = azurerm_network_interface.example.name
  }
 