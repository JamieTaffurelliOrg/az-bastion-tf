data "azurerm_public_ip_prefix" "ip_prefix" {
  name                = var.public_ip_prefix_name
  resource_group_name = var.public_ip_prefix_resource_group_name
}

data "azurerm_log_analytics_workspace" "logs" {
  provider            = azurerm.logs
  name                = var.log_analytics_workspace_name
  resource_group_name = var.log_analytics_workspace_resource_group_name
}
