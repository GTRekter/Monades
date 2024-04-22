variable "resource_group_name" {
  description = "The name of the resource group in which the Job Schedule is created."
  type        = string
}

variable "automation_account_name" {
  description = "The name of the Automation Account in which the Job Schedule is created."
  type        = string
}

variable "runbook_name" {
  description = "The name of a Runbook to link to a Schedule. It must be in the same Automation Account as the Schedule and Job Schedule."
  type        = string
}

variable "schedule_name" {
  description = "The name of the Schedule to link to the Job Schedule."
  type        = string
}

variable "parameters" {
  description = "A map of key/value pairs corresponding to the arguments that can be passed to the Runbook. Keys must be in lowercase due to Azure Automation normalization."
  type        = map(string)
  default     = {}
}

variable "run_on" {
  description = "Name of a Hybrid Worker Group the Runbook will be executed on, if any."
  type        = string
  default     = null
}
