# Define Storage Account and Resource Group
$resourceGroup = 'az-900'
$storageAccountName = '<storage-account-name>'
$ctx = (Get-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName).Context

# Create a new directory in the file share
$directoryName = 'images'
$null = New-AzStorageDirectory -ShareName 'fileshare' -Path $directoryName -Context $ctx

# Retrieve all items in the file share
$items = Get-AzStorageFile -ShareName 'fileshare' -Context $ctx

# Check each item for the 'CloudFileDirectory' property to identify directories
$directories = $items | Where-Object { $_.PsObject.Properties['CloudFileDirectory'] -ne $null }

# Output the directory names
Write-Host "Directories in file share:"
$directories | Select-Object Name