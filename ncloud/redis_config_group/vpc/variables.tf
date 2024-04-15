variable "name" {
  description = "(Required) Redis Config Group name. Composed of lowercase alphabets, numbers, hyphen (-). Must start with an alphabetic character, and the last character can only be an English letter or number. 3-15 characters."
  type        = string
  validation {
    condition     = length(var.name) >= 3 && length(var.name) <= 15
    error_message = "The name must be between 3 and 15 characters in length."
  }
  validation {
    condition     = can(regex("^[a-z0-9-]*$", var.name))
    error_message = "The name must only contain lowercase alphabets, numbers, and hyphens (-)."
  }
}

variable "redis_version" {
  description = "(Required) Redis Service version. These values may change later. For example, 5.0.14-cluster | 5.0.14-simple | 7.0.13-cluster | 7.0.13-simple"
  type        = string
}

variable "description" {
  description = "(Optional) Redis Config Group description. 1-255 characters."
  type        = string
  default     = null
}