## Understanding Azure Storage Tables

Azure Table Storage is a NoSQL key-value store for rapid development using massive semi-structured datasets. It is ideal for storing structured, non-relational data.

### Key Concepts

- **Storage Account**: The top-level namespace for all your Azure Storage data objects, including tables, blobs, queues, and files.

- **Table**: A collection of entities. Tables don't enforce any schema on entities, which means a single table can contain entities with different sets of properties.

- **Entity**: A set of properties, similar to a database row. An entity can be up to 1 MB in size.

- **Properties**: Name-value pairs that make up an entity, similar to columns in a database. An entity can have up to 252 custom properties.

### Key Properties

- **PartitionKey**: Identifies the partition that an entity belongs to. Entities with the same PartitionKey are stored together, which can improve query performance.

- **RowKey**: Uniquely identifies an entity within a partition. The combination of PartitionKey and RowKey uniquely identifies an entity in the table.

- **Timestamp**: A system-managed property that records the last time the entity was modified.

### Advantages of Table Storage

- **Scalability**: Capable of storing petabytes of data, making it suitable for big data applications.

- **Schema-less Design**: Allows flexibility in data modeling since entities within the same table can have different properties.

- **Cost-effective**: Offers a low-cost solution for storing large amounts of structured, non-relational data.

- **High Availability**: Provides strong consistency and ensures data durability.

### Common Use Cases

- **Storing User Data**: Ideal for storing user profiles and other semi-structured data.

- **Application Logs**: Useful for logging data from applications or devices due to its scalability.

- **Metadata Storage**: Can store metadata for blobs or other storage services.

### Querying Data

Azure Table Storage supports OData protocols, allowing you to perform rich queries:

- **Filter by PartitionKey and RowKey**: For the fastest queries, filter by both PartitionKey and RowKey.

- **Range Queries**: Perform range queries on entities within a partition.

- **Projection**: Retrieve specific properties to reduce bandwidth and improve performance.

Note: Azure Table Storage is now also available through Azure Cosmos DB, providing additional features like global distribution and automatic indexing.

## Prerequisites for Executing Scripts

Before running the scripts, ensure you have:

- Azure PowerShell module installed.
- Logged into your Azure account using `Connect-AzAccount`.
- A resource group and storage account (or use the script to create one).

## Table Scripts

### `table-create-one.ps1`

This script creates a new Azure Storage Table in an existing storage account.

### `table-add-entities.ps1`

This script adds two new partitions and two new entities per paritition to a pre-existing Azure Storage Table.

### `table-get-partition.ps1`

This script retrieves all the entities of a single partition for a pre-existing table.

### `table-get-entity.ps1`

This script retrieves individual entities from a pre-existing table using either a search term or filter.
