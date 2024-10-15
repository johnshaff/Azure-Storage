# Define Storage Account and Resource Group
$resourceGroup = 'az-900'
$storageAccountName = '<storage-account-name>'

# Define the queue
$queueName = "testqueue"

# Get Storage Account connection string using Azure CLI 
$connectionString = az storage account show-connection-string `
    --name $storageAccountName `
    --resource-group $resourceGroup `
    --query connectionString `
    --output tsv

# Retrieve all messages from the queue
az storage message peek `
    --queue-name $queueName `
    --connection-string $connectionString `
    --output table