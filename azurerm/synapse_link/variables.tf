// ====================================
// Required Variables
// ====================================
variable "synapse_workspace_id" {
  description = "The ID of the Synapse Workspace."
  type        = string
}
variable "location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}
variable "integration_runtime_name" {
  description = "The name of the Synapse Integration Runtime."
  type        = string
}
variable "type" {
  description = "The type of the Synapse Linked Service."
  type        = string
  validation {
    condition     = can(regex("^(AmazonMWS|AmazonRdsForOracle|AmazonRdsForSqlServer|AmazonRedshift|AmazonS3|AzureBatch|AzureBlobFS|AzureBlobStorage|AzureDataExplorer|AzureDataLakeAnalytics|AzureDataLakeStore|AzureDatabricks|AzureDatabricksDeltaLake|AzureFileStorage|AzureFunction|AzureKeyVault|AzureML|AzureMLService|AzureMariaDB|AzureMySql|AzurePostgreSql|AzureSqlDW|AzureSqlDatabase|AzureSqlMI|AzureSearch|AzureStorage|AzureTableStorage|Cassandra|CommonDataServiceForApps|Concur|CosmosDb|CosmosDbMongoDbApi|Couchbase|CustomDataSource|Db2|Drill|Dynamics|DynamicsAX|DynamicsCrm|Eloqua|FileServer|FtpServer|GoogleAdWords|GoogleBigQuery|GoogleCloudStorage|Greenplum|HBase|HDInsight|HDInsightOnDemand|HttpServer|Hdfs|Hive|Hubspot|Impala|Informix|Jira|LinkedService|Magento|MariaDB|Marketo|MicrosoftAccess|MongoDb|MongoDbAtlas|MongoDbV2|MySql|Netezza|OData|Odbc|Office365|Oracle|OracleServiceCloud|Paypal|Phoenix|PostgreSql|Presto|QuickBooks|Responsys|RestService|SqlServer|Salesforce|SalesforceMarketingCloud|SalesforceServiceCloud|SapBW|SapCloudForCustomer|SapEcc|SapHana|SapOpenHub|SapTable|ServiceNow|Sftp|SharePointOnlineList|Shopify|Snowflake|Spark|Square|Sybase|Teradata|Vertica|Web|Xero|Zoho)$", var.type))
    error_message = "Invalid linked_service_type value. Allowed values include AmazonMWS, AmazonRdsForOracle, AmazonRdsForSqlServer, AmazonRedshift, AmazonS3, AzureBatch, AzureBlobFS, AzureBlobStorage, AzureDataExplorer, AzureDataLakeAnalytics, AzureDataLakeStore, AzureDatabricks, AzureDatabricksDeltaLake, AzureFileStorage, AzureFunction, AzureKeyVault, AzureML, AzureMLService, AzureMariaDB, AzureMySql, AzurePostgreSql, AzureSqlDW, AzureSqlDatabase, AzureSqlMI, AzureSearch, AzureStorage, AzureTableStorage, Cassandra, CommonDataServiceForApps, Concur, CosmosDb, CosmosDbMongoDbApi, Couchbase, CustomDataSource, Db2, Drill, Dynamics, DynamicsAX, DynamicsCrm, Eloqua, FileServer, FtpServer, GoogleAdWords, GoogleBigQuery, GoogleCloudStorage, Greenplum, HBase, HDInsight, HDInsightOnDemand, HttpServer, Hdfs, Hive, Hubspot, Impala, Informix, Jira, LinkedService, Magento, MariaDB, Marketo, MicrosoftAccess, MongoDb, MongoDbAtlas, MongoDbV2, MySql, Netezza, OData, Odbc, Office365, Oracle, OracleServiceCloud, Paypal, Phoenix, PostgreSql, Presto, QuickBooks, Responsys, RestService, SqlServer, Salesforce, SalesforceMarketingCloud, SalesforceServiceCloud, SapBW, SapCloudForCustomer, SapEcc, SapHana, SapOpenHub, SapTable, ServiceNow, Sftp, SharePointOnlineList, Shopify, Snowflake, Spark, Square, Sybase, Teradata, Vertica, Web, Xero, Zoho. Changing this forces a new resource to be created."
  }
}
variable "name" {
  description = "The name of the Synapse Linked Service."
  type        = string
}
variable "type_properties_json" {
  description = "The JSON representation of the Linked Service Type Properties."
  type        = string
}
// ====================================
// Optional Variables
// ====================================
variable "description" {
  description = "The description of the Synapse Linked Service."
  type        = string
  default     = null
}
