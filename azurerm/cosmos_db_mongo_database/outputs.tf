output "id" {
  description = "The ID of the Cosmos DB Mongo Database."
  value       = azurerm_cosmosdb_mongo_database.mongo_database.id
}

output "name" {
  description = "The name of the Cosmos DB Mongo Database."
  value       = azurerm_cosmosdb_mongo_database.mongo_database.name
}