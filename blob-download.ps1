
# Set your resource group and storage account name
$ResourceGroup = "az-900"
$StorageAccountName = "storageaccount77380"
$ContainerName = 'imageblobs'

# Retrieve the existing storage account
$StorageAccount = Get-AzStorageAccount -ResourceGroupName $ResourceGroup -Name $StorageAccountName

# Get the context of the existing storage account
$Context = $StorageAccount.Context

# Download a blob to a local folder
$DLBlob1HT = @{
    Blob        = 'bladerunner.webp'
    Container   = $ContainerName
    Destination = '/Users/johnshaff/Desktop/bladerunner.webp'
    Context     = $Context
}
Get-AzStorageBlobContent @DLBlob1HT

