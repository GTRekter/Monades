output "id" {
  description = "The ID of Load Balancer."
  value = "${ncloud_load_balancer_vpc.load_balancer_vpc.id}"
}

output "load_balancer_no" {
  description = "The ID of Load Balancer (It is the same result as id)"
  value = "${ncloud_load_balancer_vpc.load_balancer_vpc.load_balancer_no}"
}

output "domain" {
  description = "Domain name of Load Balancer"
  value = "${ncloud_load_balancer_vpc.load_balancer_vpc.domain}"
}

output "vpc_no" {
  description = "The ID of the associated VPC"
  value = "${ncloud_load_balancer_vpc.load_balancer_vpc.vpc_no}"
}

output "ip_list" {
  description = "A list of IP address of Load Balancer"
  value = "${ncloud_load_balancer_vpc.load_balancer_vpc.ip_list}"
}