
# Set up your resource group and storage account
$resourceGroup = "az-900"
$storageAccountName = "<your-storage-account-name>"
$prefix = "image"

# Get the storage account context
$storageAccount = Get-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName
$ctx = $storageAccount.Context

# Create three containers with the prefix "image"
$null = New-AzStorageContainer -Name "${prefix}-container1" -Context $ctx
$null = New-AzStorageContainer -Name "${prefix}-container2" -Context $ctx
$null = New-AzStorageContainer -Name "${prefix}-container3" -Context $ctx

Write-Host "Containers created successfully without exposing sensitive information"