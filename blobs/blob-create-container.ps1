#create azure blob container

# Set your resource group and storage account name
$ResourceGroup = "az-900"
$StorageAccountName = "storageaccount77380"

# Retrieve the existing storage account
$StorageAccount = Get-AzStorageAccount -ResourceGroupName $ResourceGroup -Name $StorageAccountName

# Get the context of the existing storage account
$Context = $StorageAccount.Context

$ContainerName = 'imageblobs'
$null = New-AzStorageContainer -Name $ContainerName -Context $Context

# check if the container was created
Get-AzStorageContainer -Context $Context | Select-Object -Property Name
Write-Host "Container created successfully without exposing sensitive information"

