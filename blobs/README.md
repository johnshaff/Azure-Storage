# Understanding Azure Storage Blobs and Containers

Azure Blob Storage is Microsoft's object storage solution for the cloud. It is designed to store large amounts of unstructured data, such as text or binary data, accessible from anywhere in the world via HTTP or HTTPS.

### Key Components

- **Storage Account**: The top-level namespace for all your Azure Storage data objects. It provides a unique namespace for your data and is a container for services like blobs, files, queues, and tables.

- **Container**: A container organizes a set of blobs, similar to a directory in a file system. All blobs must be stored in a container. A storage account can have an unlimited number of containers, and a container can store an unlimited number of blobs.

- **Blob**: The actual file or data you store in Azure Storage. Blobs can be any type and size, such as documents, images, videos, or application installers.

### Types of Blobs

- **Block Blobs**: Ideal for storing text and binary data. Block blobs are made up of blocks of data that can be managed individually. They are optimized for streaming and storing cloud objects.

- **Append Blobs**: Comprised of blocks like block blobs but optimized for append operations. They are ideal for scenarios such as logging data from virtual machines.

- **Page Blobs**: Store random access files up to 8 TB in size and are used primarily for virtual hard disks in Azure Virtual Machines.

### Access Tiers

Azure Blob Storage offers different access tiers to optimize storage costs based on usage patterns:

- **Hot Tier**: For data that is accessed frequently. It offers the lowest access latency and the highest storage cost.

- **Cool Tier**: For data that is infrequently accessed and stored for at least 30 days. It has lower storage costs compared to the Hot tier but higher access costs.

- **Archive Tier**: For data that is rarely accessed and stored for at least 180 days. It offers the lowest storage cost but has the highest access latency, as data needs to be rehydrated before access.


## Prerequisites for Executing Scripts

Before running the scripts, ensure you have:

- Azure PowerShell module installed.
- Logged into your Azure account using `Connect-AzAccount`.
- A resource group and storage account (or use the script to create one).

## Blob Scripts

### `blob-create-container.ps1`

Create a new blob container in an existing Azure Storage Account.

### `blob-upload-single.ps1`

This script uploads files to a storage container in Azure. It retrieves the storage account, creates a container if necessary, and uploads files to different access tiers like Hot, Cool, and Archive.

### `blob-download-single.ps1`

This script downloads blobs from a storage container in Azure to a local folder. It retrieves the storage account and downloads the specified blob to a designated directory.

### `blob-upload-images.ps1`

Uploads all image extension files from a directory to an Azure Blob Storage container.

### `blob-delete-allblobs.ps1`

This script deletes all blobs in a single container in an Azure Storage account.

### `blob-calculate-totalsize.ps1`

Calculates the total size of blobs in all containers in a specified Azure storage account.

### `blob-create-prefixcontainers.ps1`

This script creates three new containers in an Azure Storage Account, each with a specified prefix in their names. It ensures that no sensitive information is exposed during the process by storing the output in null variables.

### `blob-delete-prefixcontainers.ps1`

This script lists all containers in a specified Azure Storage Account, filters containers based on a given prefix, and deletes those matching containers. It then displays the remaining containers that were not deleted after the operation.

