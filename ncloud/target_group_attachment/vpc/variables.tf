variable "target_group_no" {
  description = "The ID of target group."
  type        = string
}

variable "target_no_list" {
  description = "The List of server instance ID."
  type        = list(string)
}