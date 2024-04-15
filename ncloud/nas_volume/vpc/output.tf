output "id" {
  description = "The ID of NAS Volume."
  value       = ncloud_nas_volume.nas_volume.id
}

output "nas_volume_no" {
  description = "The ID of NAS Volume. (It is the same result as id)"
  value       = ncloud_nas_volume.nas_volume.nas_volume_no
}

output "name" {
  description = "NAS volume name."
  value       = ncloud_nas_volume.nas_volume.name
}

output "volume_total_size" {
  description = "Volume total size, in GiB"
  value       = ncloud_nas_volume.nas_volume.volume_total_size
}

output "snapshot_volume_size" {
  description = "Snapshot volume size, in GiB"
  value       = ncloud_nas_volume.nas_volume.snapshot_volume_size
}

output "is_snapshot_configuration" {
  description = "Indicates whether a snapshot volume is set."
  value       = ncloud_nas_volume.nas_volume.is_snapshot_configuration
}

output "is_event_configuration" {
  description = "Indicates whether the event is set."
  value       = ncloud_nas_volume.nas_volume.is_event_configuration
}

output "mount_information" {
  description = "Mount information for NAS volume."
  value       = ncloud_nas_volume.nas_volume.mount_information
}