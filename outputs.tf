output "public_ip_id" {
  value       = azurerm_public_ip.bastion_public_ip.id
  description = "The resource ID of the public IP"
}

output "public_ip_address" {
  value       = azurerm_public_ip.bastion_public_ip.ip_address
  description = "The ip address of the public IP"
}
output "bastion_id" {
  value       = azurerm_bastion_host.bastion.id
  description = "The resource ID of the Bastion host"
}

output "bastion_dns_name" {
  value       = azurerm_bastion_host.bastion.dns_name
  description = "The fqdn of the Bastion host"
}
