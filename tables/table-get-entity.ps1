# Define Storage Account and Resource Group
$resourceGroup = 'az-900'
$storageAccountName = '<storage-account-name>'
$ctx = (Get-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName).Context

# Get a reference to the table
$tableName = 'people'
$storageTable = Get-AzStorageTable -Name $tableName -Context $ctx
$cloudTable = $storageTable.CloudTable

# Get specific entity by value
Get-AzTableRow -table $cloudTable -columnName "username" -value "Chris" -operator Equal | Format-Table

# Get specific entity by filter
Get-AzTableRow -table $cloudTable -customFilter "(userid eq 1)" | Format-Table