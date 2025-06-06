resource "azurerm_storage_account" "st" {
  name = var.storage_name #"jatinbhalla1991"
  location = var.location
  account_tier = "Standard"
  account_replication_type = "LRS"

  resource_group_name = var.resource_group_name
lifecycle {
    prevent_destroy = false
    ignore_changes = [
      tags["environment"]
    ]
  }
}