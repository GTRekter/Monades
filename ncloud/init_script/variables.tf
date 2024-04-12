variable "content" {
  description = "(Required) Initialization script content. Scripts such as Python, Perl, Shell are available for Linux environments. However, on the first line, you must specify the script path you want to run in the form of #!/usr/bin/env python, #!/bin/perl, #!/bin/bash, etc. Windows environments can only write Visual Basic scripts."
  type        = string
}

variable "name" {
  description = "(Optional) The name to create. If omitted, Terraform will assign a random, unique name."
  type        = string
  default = null
}

variable "description" {
  description = "(Optional) description to create."
  type        = string
  default = null
}

variable "os_type" {
  description = "(Optional) Type of O/S to apply server instance. Default LNX. Accepted values: LNX (LINUX) | WND (WINDOWS)"
  type        = string
  default = "LNX"
  validation {
    condition = can(regex("^(LNX|WND)$", var.os_type))
    error_message = "os_type must be either LNX or WND."
  }
}