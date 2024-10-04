# Define Storage Account and Resource Group
$resourceGroup = 'az-900'
$storageAccountName = 'storageaccount77380'
$ctx = (Get-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName).Context

# Force delete a queue without confirmation
$queueName = "testqueue"
Remove-AzStorageQueue -Name $queueName -Context $ctx -Force

# List all queues in the storage account
Get-AzStorageQueue -Context $ctx

