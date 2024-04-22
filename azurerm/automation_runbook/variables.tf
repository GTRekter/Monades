variable "name" {
  description = "Specifies the name of the Runbook. Changing this forces a new resource to be created."
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Runbook is created. Changing this forces a new resource to be created."
  type        = string
}

variable "automation_account_name" {
  description = "The name of the automation account in which the Runbook is created. Changing this forces a new resource to be created."
  type        = string
}

variable "log_verbose" {
  description = "Verbose log option."
  type        = bool
  default     = false
}

variable "log_progress" {
  description = "Progress log option."
  type        = bool
  default     = false
}

variable "description" {
  description = "A description for this Runbook."
  type        = string
  default     = null
}

variable "content" {
  description = "The desired content of the runbook."
  type        = string
  default     = null
}
variable "runbook_type" {
  description = "The type of the runbook. Changing this forces a new resource to be created."
  type        = string
  validation {
    condition     = can(regex("^(Graph|GraphPowerShell|GraphPowerShellWorkflow|PowerShellWorkflow|PowerShell|PowerShell72|Python3|Python2|Script)$", var.runbook_type))
    error_message = "Invalid runbook type. Must be one of Graph, GraphPowerShell, GraphPowerShellWorkflow, PowerShellWorkflow, PowerShell, PowerShell72, Python3, Python2, or Script."
  }
}

variable "publish_content_link_uri" {
  description = "The URI of the runbook content. This is required if specifying your own content."
  type        = string
  default     = null
}

variable "draft" {
  description = "A draft block for the Runbook, specifying edit mode, content link, output types, and parameters."
  type = object({
    edit_mode_enabled = bool
    content_link = optional(object({
      uri     = optional(string)
      version = optional(string)
      hash = optional(object({
        algorithm = optional(string)
        value     = optional(string)
      }))
    }))
    output_types = optional(list(string))
    parameters = optional(list(object({
      key           = optional(string)
      type          = optional(string)
      mandatory     = optional(bool)
      position      = optional(number)
      default_value = optional(string)
    })))
  })
  default = null
}
