// ====================================
// General
// ====================================
variable "synapse_workspace_id" {
  description = "The ID of the Synapse Workspace."
  type        = string
}
// ====================================
// Integration Runtime Variables
// ====================================
variable "integration_runtime_name" {
  description = "(Required) The name which should be used for this Synapse Azure Integration Runtime. Changing this forces a new Synapse Azure Integration Runtime to be created."
  type        = string
}
variable "location" {
  description = "(Required) The Azure Region where the Synapse Azure Integration Runtime should exist. Use AutoResolve to create an auto-resolve integration runtime. Changing this forces a new Synapse Azure Integration Runtime to be created."
  type        = string
}
variable "compute_type" {
  description = "(Optional) Compute type of the cluster which will execute data flow job. Valid values are General, ComputeOptimized and MemoryOptimized. Defaults to General."
  type        = string
  default     = "General"
  validation {
    condition     = can(regex("^(General|ComputeOptimized|MemoryOptimized)$", var.compute_type))
    error_message = "Invalid compute_type value. Allowed values include General, ComputeOptimized and MemoryOptimized."
  }
}
variable "core_count" {
  description = "(Optional) Core count of the cluster which will execute data flow job. Valid values are 8, 16, 32, 48, 80, 144 and 272. Defaults to 8."
  type        = number
  default     = 8
  validation {
    condition     = can(regex("^(8|16|32|48|80|144|272)$", var.core_count))
    error_message = "Invalid core_count value. Allowed values include 8, 16, 32, 48, 80, 144 and 272."
  }
}
variable "integration_runtime_description" {
  description = "(Optional) Integration runtime description."
  type        = string
  default     = null
}
variable "time_to_live_min" {
  description = "(Optional) Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to 0."
  type        = number
  default     = 0
}
// ====================================
// Linked Service Variables
// ====================================
variable "name" {
  description = "(Required) The name which should be used for this Synapse Linked Service. Changing this forces a new Synapse Linked Service to be created."
  type        = string
}
variable "type" {
  description = "(Required) The type of data stores that will be connected to Synapse. Valid Values include AmazonMWS, AmazonRdsForOracle, AmazonRdsForSqlServer, AmazonRedshift, AmazonS3, AzureBatch. Changing this forces a new resource to be created. AzureBlobFS, AzureBlobStorage, AzureDataExplorer, AzureDataLakeAnalytics, AzureDataLakeStore, AzureDatabricks, AzureDatabricksDeltaLake, AzureFileStorage, AzureFunction, AzureKeyVault, AzureML, AzureMLService, AzureMariaDB, AzureMySql, AzurePostgreSql, AzureSqlDW, AzureSqlDatabase, AzureSqlMI, AzureSearch, AzureStorage, AzureTableStorage, Cassandra, CommonDataServiceForApps, Concur, CosmosDb, CosmosDbMongoDbApi, Couchbase, CustomDataSource, Db2, Drill, Dynamics, DynamicsAX, DynamicsCrm, Eloqua, FileServer, FtpServer, GoogleAdWords, GoogleBigQuery, GoogleCloudStorage, Greenplum, HBase, HDInsight, HDInsightOnDemand, HttpServer, Hdfs, Hive, Hubspot, Impala, Informix, Jira, LinkedService, Magento, MariaDB, Marketo, MicrosoftAccess, MongoDb, MongoDbAtlas, MongoDbV2, MySql, Netezza, OData, Odbc, Office365, Oracle, OracleServiceCloud, Paypal, Phoenix, PostgreSql, Presto, QuickBooks, Responsys, RestService, SqlServer, Salesforce, SalesforceMarketingCloud, SalesforceServiceCloud, SapBW, SapCloudForCustomer, SapEcc, SapHana, SapOpenHub, SapTable, ServiceNow, Sftp, SharePointOnlineList, Shopify, Snowflake, Spark, Square, Sybase, Teradata, Vertica, Web, Xero, Zoho."
  type        = string
  validation {
    condition     = can(regex("^(AmazonMWS|AmazonRdsForOracle|AmazonRdsForSqlServer|AmazonRedshift|AmazonS3|AzureBatch|AzureBlobFS|AzureBlobStorage|AzureDataExplorer|AzureDataLakeAnalytics|AzureDataLakeStore|AzureDatabricks|AzureDatabricksDeltaLake|AzureFileStorage|AzureFunction|AzureKeyVault|AzureML|AzureMLService|AzureMariaDB|AzureMySql|AzurePostgreSql|AzureSqlDW|AzureSqlDatabase|AzureSqlMI|AzureSearch|AzureStorage|AzureTableStorage|Cassandra|CommonDataServiceForApps|Concur|CosmosDb|CosmosDbMongoDbApi|Couchbase|CustomDataSource|Db2|Drill|Dynamics|DynamicsAX|DynamicsCrm|Eloqua|FileServer|FtpServer|GoogleAdWords|GoogleBigQuery|GoogleCloudStorage|Greenplum|HBase|HDInsight|HDInsightOnDemand|HttpServer|Hdfs|Hive|Hubspot|Impala|Informix|Jira|LinkedService|Magento|MariaDB|Marketo|MicrosoftAccess|MongoDb|MongoDbAtlas|MongoDbV2|MySql|Netezza|OData|Odbc|Office365|Oracle|OracleServiceCloud|Paypal|Phoenix|PostgreSql|Presto|QuickBooks|Responsys|RestService|SqlServer|Salesforce|SalesforceMarketingCloud|SalesforceServiceCloud|SapBW|SapCloudForCustomer|SapEcc|SapHana|SapOpenHub|SapTable|ServiceNow|Sftp|SharePointOnlineList|Shopify|Snowflake|Spark|Square|Sybase|Teradata|Vertica|Web|Xero|Zoho)$", var.type))
    error_message = "Invalid linked_service_type value. Allowed values include AmazonMWS, AmazonRdsForOracle, AmazonRdsForSqlServer, AmazonRedshift, AmazonS3, AzureBatch, AzureBlobFS, AzureBlobStorage, AzureDataExplorer, AzureDataLakeAnalytics, AzureDataLakeStore, AzureDatabricks, AzureDatabricksDeltaLake, AzureFileStorage, AzureFunction, AzureKeyVault, AzureML, AzureMLService, AzureMariaDB, AzureMySql, AzurePostgreSql, AzureSqlDW, AzureSqlDatabase, AzureSqlMI, AzureSearch, AzureStorage, AzureTableStorage, Cassandra, CommonDataServiceForApps, Concur, CosmosDb, CosmosDbMongoDbApi, Couchbase, CustomDataSource, Db2, Drill, Dynamics, DynamicsAX, DynamicsCrm, Eloqua, FileServer, FtpServer, GoogleAdWords, GoogleBigQuery, GoogleCloudStorage, Greenplum, HBase, HDInsight, HDInsightOnDemand, HttpServer, Hdfs, Hive, Hubspot, Impala, Informix, Jira, LinkedService, Magento, MariaDB, Marketo, MicrosoftAccess, MongoDb, MongoDbAtlas, MongoDbV2, MySql, Netezza, OData, Odbc, Office365, Oracle, OracleServiceCloud, Paypal, Phoenix, PostgreSql, Presto, QuickBooks, Responsys, RestService, SqlServer, Salesforce, SalesforceMarketingCloud, SalesforceServiceCloud, SapBW, SapCloudForCustomer, SapEcc, SapHana, SapOpenHub, SapTable, ServiceNow, Sftp, SharePointOnlineList, Shopify, Snowflake, Spark, Square, Sybase, Teradata, Vertica, Web, Xero, Zoho. Changing this forces a new resource to be created."
  }
}
variable "type_properties_json" {
  description = "(Required) A JSON object that contains the properties of the Synapse Linked Service."
  type        = string
}
variable "description" {
  description = "(Optional) The description for the Synapse Linked Service."
  type        = string
  default     = null
}