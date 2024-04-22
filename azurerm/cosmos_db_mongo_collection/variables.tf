variable "name" {
  description = "Specifies the name of the Cosmos DB Mongo Collection."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Cosmos DB Mongo Collection."
  type        = string
}

variable "account_name" {
  description = "The name of the Cosmos DB Account in which to create the Mongo Collection."
  type        = string
}

variable "database_name" {
  description = "The name of the Cosmos DB Mongo Database in which to create the Mongo Collection."
  type        = string
}

variable "shard_key" {
  description = "The name of the key to partition on for sharding."
  type        = string
  default     = null
}

variable "analytical_storage_ttl" {
  description = "The default time to live of Analytical Storage for this Mongo Collection."
  type        = number
  default     = null
}

variable "default_ttl_seconds" {
  description = "The default Time To Live in seconds for this Mongo Collection."
  type        = number
  default     = null
}

variable "index" {
  description = "One or more index blocks for the Cosmos DB Mongo Collection."
  type = list(object({
    keys   = list(string)
    unique = optional(bool)
  }))
  default = []
}
variable "throughput" {
  description = "The throughput of the MongoDB collection (RU/s)."
  type        = number
  default     = null
}

variable "autoscale_settings" {
  description = "An autoscale_settings block for the MongoDB collection."
  type        = map(any)
  default     = null
}
