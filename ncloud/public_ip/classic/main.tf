resource "ncloud_public_ip" "public_ip" {
  server_instance_no = var.server_instance_no
  description = var.description
  zone = var.zone
}