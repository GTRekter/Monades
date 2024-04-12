resource "ncloud_nat_gateway" "nat_gateway" {
  vpc_no = var.vpc_no
  zone = var.zone
  subnet_no = var.subnet_no
  name = var.name
  private_ip = var.private_ip
  description = var.description
}