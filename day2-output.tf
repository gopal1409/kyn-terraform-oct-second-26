##create a new file output.tf
  output "resource_group_name" {
    description = "The name of the resource group"
    #where is the resource group information are stored inside the state file
   value = azurerm_resource_group.my_rg.name
 }

 output "location" {
    description = "The name of the resource group location"
    #where is the resource group information are stored inside the state file
   value = azurerm_resource_group.my_rg.location
 }

#do terraform apply once apply complete you can see the output in your terraform console
#exercise
  1. inside the output.tf file at the end create a new output block which will show your vnet name
