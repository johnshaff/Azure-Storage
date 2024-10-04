# Define Storage Account and Resource Group
$resourceGroup = 'az-900'
$storageAccountName = 'storageaccount77380'
$ctx = (Get-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName).Context

# Upload a local file
$localFile = '/Users/johnshaff/Desktop/returns/wbp_test.webp'
$shareName = 'fileshare'
$null = Set-AzStorageFileContent -ShareName $shareName -Source $localFile -Path 'wbp_test.webp' -Context $ctx

# Check for the file in the file share
Get-AzStorageFile -ShareName $shareName -Path 'wbp_test.webp' -Context $ctx | Select-Object Name
