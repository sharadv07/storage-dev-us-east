# data TFE

data "tfe_outputs" "resource_grp" {
  organization = "MasonClouds"
  workspace    = "sysengg-dev-us-east"
}

resource "azurerm_storage_account" "acme_sa" {
  name                     = var.storage_acc_name
  resource_group_name      = data.tfe_outputs.resource_grp.name
  location                 = data.tfe_outputs.resource_grp.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}
