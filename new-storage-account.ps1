
$resourceGroup = 'az-900'
$location = 'eastus'
New-AzResourceGroup -Name $resourceGroup -Location $location

# Create a new storage account
New-AzStorageAccount -ResourceGroupName $resourceGroup -Name storageaccount77380 -Kind StorageV2 -Location $location -SkuName Standard_RAGRS -MinimumTlsVersion TLS1_2