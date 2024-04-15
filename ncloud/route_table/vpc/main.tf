resource "ncloud_route_table" "route_table" {
  vpc_no                = var.vpc_no
  supported_subnet_type = var.supported_subnet_type
  name                  = var.name
  description           = var.description
}