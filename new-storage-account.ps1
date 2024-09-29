<#
.SYNOPSIS
Creates a new Azure Storage account with specified properties such as SKU, location, and resource group.

.DESCRIPTION
This script creates a new Azure Storage account in the specified resource group and location. The SKU (pricing tier) determines the redundancy and performance characteristics of the storage account. Below are the different available SKUs:

.SKU DESCRIPTIONS
- **Standard_LRS**: Locally Redundant Storage, with 3 copies of your data replicated within a single region. Suitable for low-cost, low-latency storage.
- **Standard_GRS**: Geo-Redundant Storage, with data replicated across two geographically separated regions, providing higher durability for disaster recovery.
- **Standard_RAGRS**: Read Access Geo-Redundant Storage, allowing read access to the secondary region for improved availability.
- **Standard_ZRS**: Zone-Redundant Storage, replicating data across multiple availability zones within the same region, ensuring resilience against zone failures.
- **Premium_LRS**: High-performance, Locally Redundant Storage with SSD-backed storage. Suitable for applications requiring low-latency and high-throughput.
- **Premium_ZRS**: High-performance, Zone-Redundant Storage, providing both high performance and high availability by replicating across multiple zones.
- **Standard_GZRS**: Geo Zone-Redundant Storage, combining redundancy across both regions and zones.
- **Standard_RAGZRS**: Read Access Geo Zone-Redundant Storage, providing the benefits of GZRS with read access to the secondary region.

.NOTES
Choose the SKU based on your application's performance and availability requirements. Premium SKUs provide SSD-backed storage, while Standard SKUs offer cost-effective redundancy options.

.LINK
For more details on storage account SKUs, visit:
https://learn.microsoft.com/en-us/azure/storage/common/storage-account-overview
#>



$resourceGroup = "az-900"
$location = "eastus"
New-AzResourceGroup -Name $resourceGroup -Location $location

# Create a new storage account
New-AzStorageAccount `
-ResourceGroupName $resourceGroup `
-Name storageaccount77384 ` # 3-24 characters, lowercase letters and numbers only
-Kind StorageV2 `
-Location $location `
-SkuName Standard_RAGRS `
-MinimumTlsVersion TLS1_2