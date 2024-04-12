variable "name" {
  description = "(Required) ConfigGroup name."
  type        = string
}

variable "kafka_version_code" {
  description = "(Required) Cloud Data Streaming Service version to be used."
  type        = string
}

variable "description" {
  description = "(Optional) ConfigGroup description."
  type        = string
  default     = null
}