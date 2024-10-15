
$resourceGroup = 'az-900'
$location = 'eastus'
New-AzResourceGroup -Name $resourceGroup -Location $location

# Create a new storage account
New-AzStorageAccount `
    -ResourceGroupName $resourceGroup `
    -Name <storage-account-name ` # Replace <storage-account-name> with a unique name no parantheses needed
    -Kind StorageV2 `
    -Location $location `
    -SkuName Standard_LRS `
    -MinimumTlsVersion TLS1_2