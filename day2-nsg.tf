#lets create a file nsg.tf inside that copy from line 3 till 14 then do terraform apply
  #we will create an nsg
resource "azurerm_network_security_group" "web_nsg" {
  name                = "${local.name_prefix}-nsg"
  location            =  azurerm_resource_group.my_rg.location
  resource_group_name =  azurerm_resource_group.my_rg.name
}


##attach the nsg with subnet
resource "azurerm_subnet_network_security_group_association" "example" {
  subnet_id                 = azurerm_subnet.web_subnet.id
  network_security_group_id = azurerm_network_security_group.web_nsg.id
}
#finally inside nsg we will define the rules for inbound and outbound traffic
