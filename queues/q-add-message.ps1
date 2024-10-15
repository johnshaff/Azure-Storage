# Define Storage Account and Resource Group
$resourceGroup = 'az-900'
$storageAccountName = '<storage-account-name>'

# Create a new queue
$queueName = "testqueue2"

# Get Storage Account connection string using Azure CLI with line breaks
$connectionString = az storage account show-connection-string `
    --name $storageAccountName `
    --resource-group $resourceGroup `
    --query connectionString `
    --output tsv

# Add a message to the queue using Azure CLI
$message = "Hello, Azure Storage Queue!"
az storage message put `
    --queue-name $queueName `
    --content $message `
    --connection-string $connectionString