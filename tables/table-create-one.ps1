# This script creates a new Azure Storage Table

# Define Storage Account and Resource Group
$resourceGroup = 'az-900'
$storageAccountName = '<storage-account-name>'
$ctx = (Get-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName).Context

# Create a new table
$tableName = 'people'
$null = New-AzStorageTable -Name $tableName -Context $ctx

# Check if the table was created
Get-AzStorageTable -Name $tableName -Context $ctx | Select-Object Name

