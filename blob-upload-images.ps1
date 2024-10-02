# Set your resource group and storage account name
$ResourceGroup = "az-900"
$StorageAccountName = "storageaccount77380"
$ctx = (Get-AzStorageAccount -ResourceGroupName $ResourceGroup -Name $StorageAccountName).Context

# Set the path to the folder containing the images
$path = "/Users/johnshaff/Desktop/returns/" 
$containerName = "imageblobs"

# Define all common image extensions
$validExtensions = ".png", ".jpg", ".jpeg", ".webp", ".gif", ".bmp", ".tiff", ".tif", ".heic", ".heif", ".raw", ".cr2", ".nef", ".orf", ".sr2", ".svg", ".ico"

# Get only the files with valid image extensions
$imageFiles = Get-ChildItem -Path $path -Recurse | Where-Object {
    $validExtensions -contains $_.Extension.ToLower()
}

# Check the list of images (optional)
$imageFiles

# Upload image files
$imageFiles | ForEach-Object {
    $null = Set-AzStorageBlobContent -File $_.FullName -Container $containerName -Context $ctx
}

# List the blobs in the container
Write-Host "Blobs in container:"
Get-AzStorageBlob -Container $containerName -Context $ctx | Select-Object -Property Name

