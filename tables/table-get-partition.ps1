# Define Storage Account and Resource Group
$resourceGroup = 'az-900'
$storageAccountName = '<storage-account-name>'
$ctx = (Get-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName).Context

# Get a reference to the table
$tableName = 'people'
$storageTable = Get-AzStorageTable -Name $tableName -Context $ctx
$cloudTable = $storageTable.CloudTable

# Get all entities for a single partition
$partitionKey = "partition1"
Get-AzTableRow -table $cloudTable -partitionKey $partitionKey | Format-Table


