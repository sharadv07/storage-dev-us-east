output "sa_name" {
  value     = azurerm_storage_account.acme_sa.name
  sensitive = false
}
