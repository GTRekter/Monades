output "id" {
  description = "The ID of VPC peering."
  value       = ncloud_vpc_peering.vpc_peering.id
}

output "vpc_peering_no" {
  description = "The ID of VPC peering. (It is the same result as id)"
  value       = ncloud_vpc_peering.vpc_peering.vpc_peering_no
}

output "has_reverse_vpc_peering" {
  description = "Reverse VPC Peering exists."
  value       = ncloud_vpc_peering.vpc_peering.has_reverse_vpc_peering
}

output "is_between_accounts" {
  description = "VPC Peering Between Accounts."
  value       = ncloud_vpc_peering.vpc_peering.is_between_accounts
}