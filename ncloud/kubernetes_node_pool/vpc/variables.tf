variable "node_pool_name" {
  description = "(Required) Node pool name."
  type        = string
}

variable "cluster_uuid" {
  description = "(Required) Cluster uuid."
  type        = string
}

variable "node_count" {
  description = "(Required) Number of nodes."
  type        = number
}

variable "product_code" {
  description = "(Optional) Product code. Required for XEN/RHV cluster nodepool."
  type        = string
  default = null
}

variable "software_code" {
  description = "(Optional) Server image code."
  type        = string
  default = null
}

variable "autoscale" {
  description = <<EOF
  (Optional) Auto scaling configuration.
  - enabled - (Required) Auto scaling availability.
  - max - (Required) Maximum number of nodes available for auto scaling.
  - min - (Required) Minimum number of nodes available for auto scaling.
  EOF
  type = object({
    enabled = bool
    max     = number
    min     = number
  })
  default = null
}

variable "label" {
  description = <<EOF
  (Optional) NodePool label.
  - key - (Required) Label key.
  - value - (Required) Label value.
  EOF
  type        = object({
    key   = string
    value = string
  })
  default = null
}

variable "taint" {
  description = <<EOF
  (Optional) NodePool taint.
  - key - (Required) Taint key.
  - value - (Required) Taint value.
  - effect - (Required) Taint effect.
  EOF
  type        = object({
    key    = string
    value  = string
    effect = string
  })
  default = null
}