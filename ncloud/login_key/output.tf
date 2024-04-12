output "id" {
  description = "The ID of login key."
  value       = ncloud_login_key.login_key.id
}

output "private_key" {
  description = "Generated private key"
  value       = ncloud_login_key.login_key.private_key
}

output "fingerprint" {
  description = "Fingerprint of the login key"
  value       = ncloud_login_key.login_key.fingerprint
}