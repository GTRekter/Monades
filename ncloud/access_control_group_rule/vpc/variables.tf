variable "access_control_group_no" {
  description = "(Required) The ID of the ACG."
  type        = string
}

variable "inbound" {
  description = <<EOF
  (Optional) Specifies an Inbound(ingress) rules. Parameters defined below.
  - protocol - (Required) Select between TCP, UDP, and ICMP. Accepted values: TCP | UDP | ICMP
  - ip_block - (Optional) The CIDR block to match. This must be a valid network mask. Cannot be specified with source_access_control_group_no.
  - source_access_control_group_no - (Optional) The ID of specific ACG to apply this rule to. Cannot be specified with ip_block.
  - port_range - (Optional) Range of ports to apply. You can enter from 1 to 65535. e.g. set single port: 22 or set range port : 8000-9000
  - description - (Optional) description to create.
  EOF
  type = list(object({
    protocol                       = string
    ip_block                       = optional(string)
    source_access_control_group_no = optional(string)
    port_range                     = string
    description                    = optional(string)
  }))
  default = []
}

variable "outbound" {
  description = <<EOF
  (Optional) Specifies an Outboud(egrress) rules. Parameters defined below.
  - protocol - (Required) Select between TCP, UDP, and ICMP. Accepted values: TCP | UDP | ICMP
  - ip_block - (Optional) The CIDR block to match. This must be a valid network mask. Cannot be specified with source_access_control_group_no.
  - source_access_control_group_no - (Optional) The ID of specific ACG to apply this rule to. Cannot be specified with ip_block.
  - port_range - (Optional) Range of ports to apply. You can enter from 1 to 65535. e.g. set single port: 22 or set range port : 8000-9000
  - description - (Optional) description to create.
  EOF
  type = list(object({
    protocol                       = string
    ip_block                       = optional(string)
    source_access_control_group_no = optional(string)
    port_range                     = string
    description                    = optional(string)
  }))
  default = []
}