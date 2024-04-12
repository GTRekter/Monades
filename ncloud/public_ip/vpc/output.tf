output "id" {
  description = "The ID of Public IP."
  value       = ncloud_public_ip.classic.public_ip.id
}

output "public_ip_no" {
  description = "The ID of Public IP. (It is the same result as id)"
  value       = ncloud_public_ip.classic.public_ip.public_ip_no
}

output "public_ip" {
  description = "Public IP Address."
  value       = ncloud_public_ip.classic.public_ip.public_ip
}

output "kind_type" {
  description = "Public IP kind type"
  value       = ncloud_public_ip.classic.public_ip.kind_type
}