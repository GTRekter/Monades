output "id" {
  description = "The ID of the Cosmos DB Mongo Collection."
  value       = azurerm_cosmosdb_mongo_collection.mongo_collection.id
}

output "system_indexes" {
  description = "List of system indexes of the Cosmos DB Mongo Collection."
  value       = azurerm_cosmosdb_mongo_collection.mongo_collection.system_indexes
}
