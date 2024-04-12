variable "load_balancer_no" {
  description = "(Required) The ID of the load balancer."
  type        = string
}

variable "target_group_no" {
  description = "(Required) The ID of the target group."
  type        = string
}

variable "port" {
  description = "(Required) The port on which the load balancer is listening. Valid from 1 to 65534."
  type        = number
  validation {
    condition     = var.port > 0 && var.port < 65535
    error_message = "port must be between 1 and 65534"
  }
}

variable "protocol" {
  description = "(Required) The protocol type for the listener. The types of protocols available are limited by the type of load balancer. APPLICATION Load Balancer Accepted values: HTTP | HTTPS, NETWORK Load Balancer Accepted values : TCP, NETWORK_PROXY Load Balancer Accepted values : TCP | TLS."
  type        = string
  validation {
    condition     = contains(["HTTP", "HTTPS", "TCP", "TLS"], var.protocol)
    error_message = "protocol must be one of HTTP, HTTPS, TCP, or TLS"
  }
}

variable "tls_min_version_type" {
  description = "(Optional) The TLS minimum supported version type code. Valid only if the listener protocol type is HTTPS or TLS. Accepted values : TLSV10(TLSv1.0) | TLSV11(TLSv1.1) | TLSV12(TLSv1.2). Default: TLSV10."
  type        = string
  default     = "TLSV10"
  validation {
    condition     = contains(["TLSV10", "TLSV11", "TLSV12"], var.tls_min_version_type)
    error_message = "tls_min_version_type must be one of TLSV10, TLSV11, or TLSV12"
  }
}

variable "use_http2" {
  description = "(Optional) Whether to use HTTP/2 protocol. Valid only if the listener protocol type is HTTPS. Accepted values : true, false. Default: false."
  type        = bool
  default     = false
}

variable "ssl_certificate_no" {
  description = "(Optional) The ID of the SSL certificate. If the listener protocol type is HTTPS or TLS, an SSL certificate must be set."
  type        = string
  default     = null
}