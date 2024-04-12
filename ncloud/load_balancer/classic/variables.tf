variable "name" {
  description = "(Optional) Name of a load balancer instance. Default: Automatically specified by Ncloud."
  type        = string
  default     = null
}

variable "algorithm_type" {
  description = "(Optional) Load balancer algorithm type code. The available algorithms are as follows: [ROUND ROBIN (RR) | LEAST_CONNECTION (LC)]. Default: ROUND ROBIN (RR)"
  type        = string
  default     = "ROUND ROBIN (RR)"
  validation {
    condition     = contains(["ROUND ROBIN (RR)", "LEAST_CONNECTION (LC)"], var.algorithm_type)
    error_message = "algorithm_type must be one of ROUND ROBIN (RR) or LEAST_CONNECTION (LC)"
  }
}

variable "description" {
  description = "(Optional) Description of a load balancer instance."
  type        = string
  default     = null
}

variable "server_instance_no_list" {
  description = "(Optional) List of server instance numbers to be bound to the load balancer"
  type        = list(string)
  default     = []
}

variable "network_usage_type" {
  description = "(Optional) Network usage identification code. PBLIP(PublicIP), PRVT(PrivateIP). default : PBLIP(PublicIP)"
  type        = string
  default     = "PBLIP"
  validation {
    condition     = contains(["PBLIP", "PRVT"], var.network_usage_type)
    error_message = "network_usage_type must be one of PBLIP or PRVT"
  }
}

variable "region" {
  description = "(Optional) Region code. Get available values using the data source ncloud_regions. Default: KR region."
  type        = string
  default     = "KR"
}

variable "zone" {
  description = "(Optional) Zone code. Zone in which you want to create a NAS volume. Default: The first zone of the region. Get available values using the data source ncloud_zones."
  type        = string
  default     = null
}

variable "rule_list" {
  description = <<EOF
  (Optional) Load balancer rules.
  - protocol_type - (Required) Protocol type code of load balancer rules. The following codes are available. [HTTP | HTTPS | TCP | SSL]
  - load_balancer_port - (Required) Load balancer port of load balancer rules
  - server_port - (Required) Server port of load balancer rules
  - l7_health_check_path - (optional) Health check path of load balancer rules. Required when the protocol_type is HTTP/HTTPS.
  - certificate_name - (optional) Load balancer SSL certificate name. Required when the protocol_type value is SSL/HTTPS.
  - proxy_protocol_use_yn - (Optional) Use 'Y' if you want to check client IP addresses by enabling the proxy protocol while you select TCP or SSL.
  EOF
  type = list(object({
    protocol_type         = string
    load_balancer_port    = number
    server_port           = number
    l7_health_check_path  = optional(string)
    certificate_name      = optional(string)
    proxy_protocol_use_yn = optional(string)
  }))
  default = []
}