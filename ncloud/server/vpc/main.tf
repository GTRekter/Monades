resource "ncloud_server" "server" {
  name                          = var.name
  server_image_product_code     = var.server_image_product_code
  server_product_code           = var.server_product_code
  member_server_image_no        = var.member_server_image_no
  description                   = var.description
  login_key_name                = var.login_key_name
  is_protect_server_termination = var.is_protect_server_termination
  fee_system_type_code          = var.fee_system_type_code
  zone                          = var.zone
  subnet_no                     = var.subnet_no
  init_script_no                = var.init_script_no
  placement_group_no            = var.placement_group_no
  dynamic "network_interface" {
    for_each = var.network_interface
    content {
      network_interface_no = network_interface.value.network_interface_no
      order                = network_interface.value.order
    }
  }
  is_encrypted_base_block_storage_volume = var.is_encrypted_base_block_storage_volume
}