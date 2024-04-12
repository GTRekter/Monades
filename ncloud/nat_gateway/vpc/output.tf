output "id" {
  description = "The ID of the NAT Gateway."
  value       = ncloud_nat_gateway.nat_gateway.id
}

output "nat_gateway_no" {
  description = "The ID of the NAT Gateway. (It is the same result as id)"
  value       = ncloud_nat_gateway.nat_gateway.nat_gateway_no
}

output "public_ip" {
  description = "Public IP on created NAT Gateway."
  value       = ncloud_nat_gateway.nat_gateway.public_ip
}

output "public_ip_no" {
  description = "The ID of the associated Public IP."
  value       = ncloud_nat_gateway.nat_gateway.public_ip_no
}

output "subnet_name" {
  description = "Subnet name on created NAT Gateway."
  value       = ncloud_nat_gateway.nat_gateway.subnet_name
}