variable "server_image_product_code" {
  description = "(Optional, Required if member_server_image_no is not provided) Server image product code to determine which server image to create. It can be obtained through data.ncloud_server_image(s)."
  type        = string
  default     = null
}

variable "server_product_code" {
  description = "(Optional) Server product code to determine the server specification to create. It can be obtained through the data.ncloud_server_product(s) action. Default : Selected as minimum specification. The minimum standards are 1. memory 2. CPU 3. basic block storage size 4. disk type (NET,LOCAL)"
  type        = string
  default     = null
}

variable "member_server_image_no" {
  description = "(Optional, Required if server_image_product_code is not provided) Required value when creating a server from a manually created server image. It can be obtained through the data.ncloud_member_server_image(s) action."
  type        = string
  default     = null
}

variable "name" {
  description = "(Optional) Server name to create. default: Assigned by ncloud"
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) Server description to create."
  type        = string
  default     = null
}

variable "login_key_name" {
  description = "(Optional) The login key name to encrypt with the public key. Default : Uses the login key name most recently created."
  type        = string
  default     = null
}

variable "is_protect_server_termination" {
  description = "(Optional) You can set whether or not to protect return when creating. default :false"
  type        = bool
  default     = false
}

variable "fee_system_type_code" {
  description = "(Optional) A rate system identification code. There are time plan(MTRAT) and flat rate (FXSUM). Default : Time plan(MTRAT)"
  type        = string
  default     = "Time plan(MTRAT)"
}

variable "zone" {
  description = "(Optional) Zone code. You can determine the ZONE where the server will be created. Default : Assigned by NAVER Cloud Platform. Get available values using the data source ncloud_zones."
  type        = string
  default     = null
}

variable "subnet_no" {
  description = "(Required) The ID of the associated Subnet."
  type        = string
}

variable "init_script_no" {
  description = "(Optional) Set init script ID, The server can run a user-set initialization script at first boot."
  type        = string
  default     = null
}

variable "placement_group_no" {
  description = "(Optional) Physical placement group that belongs to the server instance."
  type        = string
  default     = null
}

variable "network_interface" {
  description = <<EOF
List of Network Interface.
- network_interface_no - (Required) If you want to add a network interface that you created yourself, set the network interface ID.
- order - (Required) Sets the order of network interfaces to be assigned to the server to create. The unit name (eth0, eth1, etc.) is determined in that order. There must be one primary network interface. If you set 0, network interface is set by default. You can assign up to three network interfaces.
EOF
  type = list(object({
    network_interface_no = string
    order                = number
  }))
  default = null
}

variable "is_encrypted_base_block_storage_volume" {
  description = "(Optional) you can set whether to encrypt basic block storage if server image is RHV. Default false."
  type        = bool
  default     = false
}