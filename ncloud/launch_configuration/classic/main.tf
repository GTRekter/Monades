resource "ncloud_launch_configuration" "launch_configuration" {
  name                         = var.name
  server_image_product_code    = var.server_image_product_code
  server_product_code          = var.server_product_code
  member_server_image_no       = var.member_server_image_no
  login_key_name               = var.login_key_name
  init_script_no               = var.init_script_no
  user_data                    = var.user_data
  access_control_group_no_list = var.access_control_group_no_list
}