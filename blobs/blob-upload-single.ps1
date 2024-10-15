

# Set your resource group and storage account name
$ResourceGroup = "az-900"
$StorageAccountName = "<your-storage-account-name>"

# Retrieve the existing storage account
$StorageAccount = Get-AzStorageAccount -ResourceGroupName $ResourceGroup -Name $StorageAccountName

# Get the context of the existing storage account
$Context = $StorageAccount.Context

$ContainerName = 'imageblobs'
New-AzStorageContainer -Name $ContainerName -Context $Context

# upload a file to the default account (inferred) access tier
$Blob1HT = @{
    File             = '/<path>/bladerunner.webp'
    Container        = $ContainerName
    Blob             = "bladerunner.webp"
    Context          = $Context
    StandardBlobTier = 'Hot'
}
Set-AzStorageBlobContent @Blob1HT
  
# upload another file to the Cool access tier
# $Blob2HT = @{
#     File             = 'D:\Images\Image002.jpg'
#     Container        = $ContainerName
#     Blob             = 'Image002.png'
#     Context          = $Context
#     StandardBlobTier = 'Cool'
# }
# Set-AzStorageBlobContent @Blob2HT
  
# upload a file to a folder to the Archive access tier
# $Blob3HT = @{
#     File             = 'D:\Images\FolderName\Image003.jpg'
#     Container        = $ContainerName
#     Blob             = 'FolderName/Image003.jpg'
#     Context          = $Context
#     StandardBlobTier = 'Archive'
# }
# Set-AzStorageBlobContent @Blob3HT

# List the blobs in the container
Get-AzStorageBlob `
-Container $ContainerName `
-Context $Context | Select-Object -Property Name

