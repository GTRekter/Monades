output "id" {
  description = "The ID of the Init script."
  value       = ncloud_init_script.init_script.id
}

output "init_script_no" {
  description = "The ID of the Init script. (It is the same result as id)"
  value       = ncloud_init_script.init_script.init_script_no
}