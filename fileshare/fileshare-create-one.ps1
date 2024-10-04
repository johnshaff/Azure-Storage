# Define Storage Account and Resource Group
$resourceGroup = 'az-900'
$storageAccountName = 'storageaccount77380'
$ctx = (Get-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName).Context

# Create a new azure file share
$fileShareName = 'fileshare'
$null = New-AzStorageShare -Name $fileShareName -Context $ctx

# Check if the file share was created
Get-AzStorageShare -Name $fileShareName -Context $ctx

