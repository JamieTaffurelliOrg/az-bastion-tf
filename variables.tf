variable "resource_group_name" {
  type        = string
  description = "Resource Group name to deploy to"
}

variable "location" {
  type        = string
  description = "Location of the Bastion Host"
}

variable "public_ip_name" {
  type        = string
  description = "Name of the public IP of the Bastion Host"
}

variable "public_ip_domain_name_label" {
  type        = string
  default     = null
  description = "Domain label of the public IP of the Bastion Host"
}

variable "idle_timeout_in_minutes" {
  type        = number
  default     = 4
  description = "Idle timeout of the public IP of the Bastion Host"
}

variable "public_ip_prefix_name" {
  type        = string
  description = "Name of the prefix of the public IP of the Bastion Host"
}

variable "public_ip_prefix_resource_group_name" {
  type        = string
  description = "Resource group name of the prefix of the public IP of the Bastion Host"
}

variable "bastion_host_name" {
  type        = string
  description = "Name of the Bastion Host"
}

variable "sku" {
  type        = string
  default     = "Basic"
  description = "Sku of Bastion host, basic or standard"
}

variable "copy_paste_enabled" {
  type        = bool
  default     = null
  description = "Enable copy paste, require standard sku"
}

variable "file_copy_enabled" {
  type        = bool
  default     = null
  description = "Enable file copy, require standard sku"
}

variable "ip_connect_enabled" {
  type        = bool
  default     = null
  description = "Enable ip connect, require standard sku"
}

variable "shareable_link_enabled" {
  type        = bool
  default     = null
  description = "Enable shareable link, require standard sku"
}

variable "tunneling_enabled" {
  type        = bool
  default     = null
  description = "Enable tunneling, require standard sku"
}

variable "scale_units" {
  type        = number
  default     = 2
  description = "Number of scale units of the bastion host"
}

variable "virtual_network_name" {
  type        = string
  description = "Virtual network of Bastion host"
}

variable "virtual_network_resource_group_name" {
  type        = string
  description = "Virtual network resource group name"
}

variable "log_analytics_workspace_name" {
  type        = string
  description = "Name of Log Analytics Workspace to send diagnostics"
}

variable "log_analytics_workspace_resource_group_name" {
  type        = string
  description = "Resource Group of Log Analytics Workspace to send diagnostics"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply"
}
