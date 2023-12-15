resource "azurerm_public_ip" "bastion_public_ip" {
  name                    = var.public_ip_name
  resource_group_name     = var.resource_group_name
  location                = var.location
  allocation_method       = "Static"
  zones                   = [1, 2, 3]
  ddos_protection_mode    = "VirtualNetworkInherited"
  domain_name_label       = var.public_ip_domain_name_label
  idle_timeout_in_minutes = var.idle_timeout_in_minutes
  ip_version              = "IPv4"
  public_ip_prefix_id     = data.azurerm_public_ip_prefix.ip_prefix.id
  sku                     = "Standard"
  sku_tier                = "Regional"
  tags                    = var.tags
}

resource "azurerm_monitor_diagnostic_setting" "public_ip_diagnostics" {
  name                       = "${var.log_analytics_workspace_name}-security-logging"
  target_resource_id         = azurerm_public_ip.bastion_public_ip.id
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.logs.id

  enabled_log {
    category = "DDoSProtectionNotifications"
  }

  enabled_log {
    category = "DDoSMitigationFlowLogs"
  }

  enabled_log {
    category = "DDoSMitigationReports"
  }

  metric {
    category = "AllMetrics"
    enabled  = true
  }
}

resource "azurerm_bastion_host" "bastion" {
  name                   = var.bastion_host_name
  location               = var.location
  resource_group_name    = var.resource_group_name
  sku                    = var.sku
  copy_paste_enabled     = var.copy_paste_enabled
  file_copy_enabled      = var.file_copy_enabled
  ip_connect_enabled     = var.ip_connect_enabled
  scale_units            = var.scale_units
  shareable_link_enabled = var.shareable_link_enabled
  tunneling_enabled      = var.tunneling_enabled


  ip_configuration {
    name                 = "ipconfig"
    subnet_id            = var.subnet_id
    public_ip_address_id = azurerm_public_ip.bastion_public_ip.id
  }

  tags = var.tags
}

resource "azurerm_monitor_diagnostic_setting" "bastion_diagnostics" {
  name                       = "${var.log_analytics_workspace_name}-security-logging"
  target_resource_id         = azurerm_bastion_host.bastion.id
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.logs.id

  enabled_log {
    category = "BastionAuditLogs"
  }

  metric {
    category = "AllMetrics"
    enabled  = true
  }
}
