variable "certificate_name" {
  description = "(Required) Name of a certificate"
  type        = string
}

variable "privatekey" {
  description = "(Required) Private key for a certificate"
  type        = string
}

variable "publickey_certificate" {
  description = "(Required) Public key for a certificate"
  type        = string
}

variable "certificate_chain" {
  description = "(Optional) Chainca certificate (Required if the certificate is issued with a chainca)"
  type        = string
  default     = null
}