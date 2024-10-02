# Script to delete all blobs in a single container

# Set your resource group and storage account name
$ResourceGroup = "az-900"
$StorageAccountName = "storageaccount77380"
$ContainerName = "imageblobs"

# Retrieve the existing storage account
$StorageAccount = Get-AzStorageAccount -ResourceGroupName $ResourceGroup -Name $StorageAccountName

# Get the context of the existing storage account
$Context = $StorageAccount.Context

# Delete all blobs in the container
Get-AzStorageBlob -Container $ContainerName -Context $Context | ForEach-Object {
    $null = Remove-AzStorageBlob -Blob $_.Name -Container $ContainerName -Context $Context
}

# List the blobs in the container
Write-Host "Blobs in container:"
Get-AzStorageBlob -Container $ContainerName -Context $Context | Select-Object -Property Name

