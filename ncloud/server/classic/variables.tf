variable "server_image_product_code" {
    description = "(Optional, Required if member_server_image_no is not provided) Server image product code to determine which server image to create. It can be obtained through data.ncloud_server_image(s)."
    type       = string
    default = null
}

variable "server_product_code" {
    description = "(Optional) Server product code to determine the server specification to create. It can be obtained through the data.ncloud_server_product(s) action. Default : Selected as minimum specification. The minimum standards are 1. memory 2. CPU 3. basic block storage size 4. disk type (NET,LOCAL)"
    type       = string
    default =  null
}

variable "member_server_image_no" {
    description = "(Optional, Required if server_image_product_code is not provided) Required value when creating a server from a manually created server image. It can be obtained through the data.ncloud_member_server_image(s) action."
    type       = string
    default = null
}

variable "name" {
    description = "(Optional) Server name to create. default: Assigned by ncloud"
    type       = string
    default = null
}

variable "description" {
    description = "(Optional) Server description to create."
    type       = string
    default = null
}

variable "login_key_name" {
    description = "(Optional) The login key name to encrypt with the public key. Default : Uses the login key name most recently created."
    type       = string
    default = null
}

variable "is_protect_server_termination" {
    description = "(Optional) You can set whether or not to protect return when creating. default :false"
    type       = bool
    default = false
}

variable "fee_system_type_code" {
    description = "(Optional) A rate system identification code. There are time plan(MTRAT) and flat rate (FXSUM). Default : Time plan(MTRAT)"
    type       = string
    default = "Time plan(MTRAT)"
}

variable "zone" {
    description = "(Optional) Zone code. You can determine the ZONE where the server will be created. Default : Assigned by NAVER Cloud Platform. Get available values using the data source ncloud_zones."
    type       = string
    default = null
}

variable "access_control_group_configuration_no_list" {
    description = "(Optional) You can set the ACG created when creating the server. ACG setting number can be obtained through the getAccessControlGroupList action. Default : Default ACG number"
    type        = list(string)
    default = null
}

variable "user_data" {
    description = "(Optional) The server will execute the user data script set by the user at first boot. To view the column, it is returned only when viewing the server instance."
    type        = string
    default = null
}

variable "raid_type_name" {
    description = "(Optional) Raid Type Name."
    type        = string
    default = null
}

variable "tag_list" {
    description = <<EOF
(Optional) Server instance tag list.
- tag_key - (Required) Instance tag key
- tag_value - (Required) Instance tag value
EOF
    type        = list(object({
        tag_key   = string
        tag_value = string
    }))
    default = null
}