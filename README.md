# az-bastion-tf
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.6.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.20 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.37.0 |
| <a name="provider_azurerm.logs"></a> [azurerm.logs](#provider\_azurerm.logs) | 3.37.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_bastion_host.bastion](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/bastion_host) | resource |
| [azurerm_monitor_diagnostic_setting.bastion_diagnostics](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_monitor_diagnostic_setting.public_ip_diagnostics](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_public_ip.bastion_public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_log_analytics_workspace.logs](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/log_analytics_workspace) | data source |
| [azurerm_public_ip_prefix.ip_prefix](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/public_ip_prefix) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bastion_host_name"></a> [bastion\_host\_name](#input\_bastion\_host\_name) | Name of the Bastion Host | `string` | n/a | yes |
| <a name="input_copy_paste_enabled"></a> [copy\_paste\_enabled](#input\_copy\_paste\_enabled) | Enable copy paste, require standard sku | `bool` | `null` | no |
| <a name="input_file_copy_enabled"></a> [file\_copy\_enabled](#input\_file\_copy\_enabled) | Enable file copy, require standard sku | `bool` | `null` | no |
| <a name="input_idle_timeout_in_minutes"></a> [idle\_timeout\_in\_minutes](#input\_idle\_timeout\_in\_minutes) | Idle timeout of the public IP of the Bastion Host | `number` | `4` | no |
| <a name="input_ip_connect_enabled"></a> [ip\_connect\_enabled](#input\_ip\_connect\_enabled) | Enable ip connect, require standard sku | `bool` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | Location of the Bastion Host | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_name"></a> [log\_analytics\_workspace\_name](#input\_log\_analytics\_workspace\_name) | Name of Log Analytics Workspace to send diagnostics | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_resource_group_name"></a> [log\_analytics\_workspace\_resource\_group\_name](#input\_log\_analytics\_workspace\_resource\_group\_name) | Resource Group of Log Analytics Workspace to send diagnostics | `string` | n/a | yes |
| <a name="input_public_ip_domain_name_label"></a> [public\_ip\_domain\_name\_label](#input\_public\_ip\_domain\_name\_label) | Domain label of the public IP of the Bastion Host | `string` | `null` | no |
| <a name="input_public_ip_name"></a> [public\_ip\_name](#input\_public\_ip\_name) | Name of the public IP of the Bastion Host | `string` | n/a | yes |
| <a name="input_public_ip_prefix_name"></a> [public\_ip\_prefix\_name](#input\_public\_ip\_prefix\_name) | Name of the prefix of the public IP of the Bastion Host | `string` | n/a | yes |
| <a name="input_public_ip_prefix_resource_group_name"></a> [public\_ip\_prefix\_resource\_group\_name](#input\_public\_ip\_prefix\_resource\_group\_name) | Resource group name of the prefix of the public IP of the Bastion Host | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource Group name to deploy to | `string` | n/a | yes |
| <a name="input_scale_units"></a> [scale\_units](#input\_scale\_units) | Number of scale units of the bastion host | `number` | `2` | no |
| <a name="input_shareable_link_enabled"></a> [shareable\_link\_enabled](#input\_shareable\_link\_enabled) | Enable shareable link, require standard sku | `bool` | `null` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | Sku of Bastion host, basic or standard | `string` | `"Basic"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Resource ID of subnet to deploy bastion host to | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply | `map(string)` | n/a | yes |
| <a name="input_tunneling_enabled"></a> [tunneling\_enabled](#input\_tunneling\_enabled) | Enable tunneling, require standard sku | `bool` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bastion_dns_name"></a> [bastion\_dns\_name](#output\_bastion\_dns\_name) | The fqdn of the Bastion host |
| <a name="output_bastion_id"></a> [bastion\_id](#output\_bastion\_id) | The resource ID of the Bastion host |
| <a name="output_public_ip_address"></a> [public\_ip\_address](#output\_public\_ip\_address) | The ip address of the public IP |
| <a name="output_public_ip_id"></a> [public\_ip\_id](#output\_public\_ip\_id) | The resource ID of the public IP |
<!-- END_TF_DOCS -->
