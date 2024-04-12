output "id" {
  description = "The ID of the Deny-Allow Group."
  value       = ncloud_network_acl_deny_allow_group.network_acl_deny_allow_group.id
}

output "network_acl_deny_allow_group_no" {
  description = "The ID of the Deny-Allow Group. (It is the same result as id)"
  value       = ncloud_network_acl_deny_allow_group.network_acl_deny_allow_group.network_acl_deny_allow_group_no
}