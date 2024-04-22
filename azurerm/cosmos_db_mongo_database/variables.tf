variable "name" {
  description = "Specifies the name of the Cosmos DB Mongo Database."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Cosmos DB Mongo Database."
  type        = string
}

variable "account_name" {
  description = "The name of the Cosmos DB Account to create the database within."
  type        = string
}

variable "throughput" {
  description = "The throughput of the MongoDB database (RU/s)."
  type        = number
  default     = null
}

variable "autoscale_settings" {
  description = "An autoscale_settings block for the MongoDB database."
  type        = map(any)
  default     = null
}
