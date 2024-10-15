# Define Storage Account and Resource Group
$resourceGroup = 'az-900'
$storageAccountName = '<storage-account-name>'
$ctx = (Get-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName).Context

# Create a new queue
$queueName = "testqueue"
New-AzStorageQueue -Name $queueName -Context $ctx

