resource "ncloud_lb" "load_balancer" {
  name            = var.name
  description     = var.description
  network_type    = var.network_type
  idle_timeout    = var.idle_timeout
  type            = var.type
  throughput_type = var.throughput_type
  subnet_no_list  = var.subnet_no_list
}