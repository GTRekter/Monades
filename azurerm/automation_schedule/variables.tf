variable "name" {
  description = "Specifies the name of the Schedule. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Schedule is created. Changing this forces a new resource to be created."
  type        = string
}

variable "automation_account_name" {
  description = "The name of the automation account in which the Schedule is created. Changing this forces a new resource to be created."
  type        = string
}

variable "frequency" {
  description = "The frequency of the schedule. Can be either OneTime, Day, Hour, Week, or Month."
  type        = string
  validation {
    condition     = can(regex("^(OneTime|Day|Hour|Week|Month)$", var.frequency))
    error_message = "Invalid frequency. Must be one of OneTime, Day, Hour, Week, or Month."
  }
}

variable "description" {
  description = "A description for this Schedule."
  type        = string
  default     = null
}

variable "interval" {
  description = "The number of frequencies between runs. Only valid when frequency is Day, Hour, Week, or Month. Defaults to 1."
  type        = number
  default     = 1
}

variable "start_time" {
  description = "Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created."
  type        = string
  default     = null
}

variable "expiry_time" {
  description = "The end time of the schedule."
  type        = string
  default     = null
}

variable "timezone" {
  description = "The timezone of the start time. Defaults to 'Etc/UTC'. For possible values see: https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows"
  type        = string
  default     = "Etc/UTC"
}

variable "week_days" {
  description = "List of days of the week that the job should execute on. Only valid when frequency is Week. Possible values are Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, and Sunday."
  type        = list(string)
  default     = []
}

variable "month_days" {
  description = "List of days of the month that the job should execute on. Must be between 1 and 31, or -1 for the last day of the month. Only valid when frequency is Month."
  type        = list(number)
  default     = []
}

variable "monthly_occurrence" {
  description = "Specifies occurrences of days within a month. Only valid when frequency is Month. Each occurrence must specify a 'day' (one of Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) and an 'occurrence' (between 1 and 5, or -1 for the last week within the month)."
  type = object({
    day        = string
    occurrence = number
  })
  default = null
}
