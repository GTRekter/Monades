resource "ncloud_server" "server" {
  name                                       = var.name
  server_image_product_code                  = var.server_image_product_code
  server_product_code                        = var.server_product_code
  member_server_image_no                     = var.member_server_image_no
  description                                = var.description
  login_key_name                             = var.login_key_name
  is_protect_server_termination              = var.is_protect_server_termination
  fee_system_type_code                       = var.fee_system_type_code
  zone                                       = var.zone
  access_control_group_configuration_no_list = var.access_control_group_configuration_no_list
  user_data                                  = var.user_data
  raid_type_name                             = var.raid_type_name
  dynamic "tag_list" {
    for_each = var.tag_list
    content {
      tag_key   = tag_list.value.tag_key
      tag_value = tag_list.value.tag_value
    }
  }
}