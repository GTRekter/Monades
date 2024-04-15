variable "cluster_name" {
  description = "(Required) Cluster name."
  type        = string
}

variable "os_image_code" {
  description = "(Required) OS type to be used."
  type        = string
}

variable "vpc_no" {
  description = "(Required) VPC number to be used."
  type        = string
}

variable "search_engine" {
  description = <<EOF
    (Required) Search Engine Service configuration.
- version_code - (Required) Search Engine Service version to be used.
- user_name - (Required) Search Engine UserName. Only lowercase alphanumeric characters and non-consecutive hyphens (-) allowed First character must be a letter, but the last character may be a letter or a number.
- user_password - (Required) Search Engine User password. Must be at least 8 characters and contain at least one of each: English uppercase letter, lowercase letter, special character, and number.
- dashboard_port - (Required) Search Engine Dashboard port.
EOF
  type = object({
    version_code   = string
    user_name      = string
    user_password  = string
    dashboard_port = string
  })
}

variable "manager_node" {
  description = <<EOF
    (Required) Manager node configuration.
- is_dual_manager - (Required) Redundancy of manager node.
- product_code - (Required) HW specifications of the manager node.
- subnet_no - (Required) Subnet number where the manager node is to be located.
EOF
  type = object({
    is_dual_manager = bool
    product_code    = string
    subnet_no       = string
  })
}

variable "data_node" {
  description = <<EOF
    (Required) Data node configuration.
- product_code - (Required) HW specifications of the data node.
- subnet_no - (Required) Subnet number where the data node is to be located.
- count - (Required) Number of data nodes. At least 3 units. (Can only be increased)
- storage_size - (Required) Data node storage capacity. At least 100 GB, up to 2000 GB. Must be in units of 10 GB.
EOF
  type = object({
    product_code = string
    subnet_no    = string
    count        = number
    storage_size = number
  })
}

variable "master_node" {
  description = <<EOF
    (Optional) Master node configuration.
- product_code - (Required) HW specifications of the master node.
- subnet_no - (Required) Subnet number where the master node is to be located.
- count - (Required) Number of master nodes. Only 3 or 5 units are available.
EOF
  type = object({
    product_code = string
    subnet_no    = string
    count        = number
  })
}

variable "login_key_name" {
  description = "(Required) Login key to access Manager node server."
  type        = string
}