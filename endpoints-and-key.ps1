# Define Storage Account and Resource Group
$resourceGroup = 'az-900'
$storageAccountName = '<storage-account-name>'

# Get the storage account details (to extract the endpoint details)
$storageAccount = Get-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName

# Get and extract only the AccountKey
$accountKey = (Get-AzStorageAccountKey -ResourceGroupName $resourceGroup -Name $storageAccountName)[0].Value

# Get and extract only the AccountKey
$accountKey = (Get-AzStorageAccountKey -ResourceGroupName $resourceGroup -Name $storageAccountName)[0].Value

# Extract the endpoints (Blob, Queue, Table, File)
$blobUri = $storageAccount.PrimaryEndpoints.Blob
$queueUri = $storageAccount.PrimaryEndpoints.Queue
$tableUri = $storageAccount.PrimaryEndpoints.Table
$fileUri = $storageAccount.PrimaryEndpoints.File

# Display the endpoints and key
$output = @"

AZURE STORAGE ENDPOINTS & KEY

KEY = 
$accountKey

BLOB ENDPOINT = 
$blobUri

QUEUE ENDPOINT = 
$queueUri

TABLE ENDPOINT = 
$tableUri

FILE ENDPOINT = 
$fileUri

"@

# Output the result
Write-Output $output

