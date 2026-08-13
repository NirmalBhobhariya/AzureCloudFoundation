output "Resource_group" {
  value = {
    for key, rg in azurerm_resource_group.Alfa : key => {
      id       = rg.id
      name     = rg.name
      location = rg.location
    }
  }
}