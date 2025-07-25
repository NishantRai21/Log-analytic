resource "azurerm_log_analytics_workspace" "new1" {
  name                = var.log_name
  location            = var.law_location
  resource_group_name = var.rg_law_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}