
# Define Storage Account and Resource Group
$resourceGroup = 'az-900'
$storageAccountName = 'storageaccount77380'
$ctx = (Get-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName).Context


# To perform operations on a table, you need a reference to the specific table.
$storageTable = Get-AzStorageTable -Name 'people' -Context $ctx

# To perform operations on a table using AzTable, return a reference to the CloudTable property of a specific table. 
# The CloudTable property exposes the .NET methods available for managing table data from PowerShell.
$cloudTable = $storageTable.CloudTable

'''
How to manage entities, or rows, in the table:

Entities can have up to 255 properties, including three system properties: PartitionKey, RowKey, and Timestamp. 
Youre responsible for inserting and updating the values of PartitionKey and RowKey. The server manages the value of Timestamp, 
which cant be modified. Together the PartitionKey and RowKey uniquely identify every entity within a table.

PartitionKey: Determines the partition that the entity is stored in.
RowKey: Uniquely identifies the entity within the partition.
You may define up to 252 custom properties for an entity.
'''

$partitionKey1 = "partition1"
$partitionKey2 = "partition2"

# add four rows 
Add-AzTableRow -table $cloudTable -partitionKey $partitionKey1 -rowKey ("CA") -property @{"username" = "Chris"; "userid" = 1 }

Add-AzTableRow -table $cloudTable -partitionKey $partitionKey2 -rowKey ("NM") -property @{"username" = "Jessie"; "userid" = 2 }

Add-AzTableRow -table $cloudTable -partitionKey $partitionKey1 -rowKey ("WA") -property @{"username" = "Christine"; "userid" = 3 }

Add-AzTableRow -table $cloudTable -partitionKey $partitionKey2 -rowKey ("TX") -property @{"username" = "Steven"; "userid" = 4 }

# Retrieve all entities
Write-Host "All entities in people table:"
Get-AzTableRow -table $cloudTable | Format-Table

