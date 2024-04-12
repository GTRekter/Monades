resource "ncloud_subnet" "subnet" {
  vpc_no         = var.vpc_no
  subnet         = var.subnet
  zone           = var.zone
  network_acl_no = var.network_acl_no
  subnet_type    = var.subnet_type
  name           = var.name
  usage_type     = var.usage_type
}