output "id" {
  description = "The ID of Subnet."
  value       = ncloud_subnet.subnet.id
}

output "subnet_no" {
  description = "The ID of the Subnet. (It is the same result as id)"
  value       = ncloud_subnet.subnet.subnet_no
}

output "vpc_no" {
  description = "The ID of VPC."
  value       = ncloud_subnet.subnet.vpc_no
}