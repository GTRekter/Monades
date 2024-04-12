resource "ncloud_init_script" "init_script" {
  name = var.name
  description = var.description
  content = var.content
  os_type = var.os_type
}