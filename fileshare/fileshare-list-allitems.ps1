# Define Storage Account and Resource Group
$resourceGroup = 'az-900'
$storageAccountName = 'storageaccount77380'
$ctx = (Get-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName).Context

# Retrieve all items (files and directories) in the root of the file share
Get-AzStorageFile -ShareName 'fileshare' -Context $ctx