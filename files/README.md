## Understanding Azure Files

Azure Files is a cloud-based file storage service that allows you to create fully managed file shares accessible via the industry-standard Server Message Block (SMB) and Network File System (NFS) protocols. It enables seamless file sharing across Windows, Linux, and macOS clients, both in the cloud and on-premises.

### Key Features

- **Fully Managed Service**: Azure Files is a managed service, meaning Microsoft handles hardware maintenance, updates, and patches, allowing you to focus on your applications.
  
- **SMB and NFS Support**: Provides support for SMB 3.0 and NFS protocols, enabling cross-platform compatibility and integration with existing applications.
  
- **Mountable File Shares**: Azure file shares can be mounted concurrently by cloud or on-premises deployments, facilitating hybrid cloud scenarios.
  
- **Integration with Azure Services**: Works seamlessly with Azure Virtual Machines, Azure Kubernetes Service (AKS), and other Azure resources.

### Access Tiers

- **Premium Tier**: Offers high-performance solid-state drive (SSD) storage for IO-intensive workloads requiring consistent low latency and high throughput.
  
- **Hot Tier**: Designed for general-purpose file shares used frequently. It offers low latency and high throughput at a moderate cost.
  
- **Cool Tier**: Optimized for infrequently accessed file shares. It provides cost savings on storage, with slightly higher access and transaction costs.
  
- **Transaction Optimized**: Ideal for workloads with high transaction rates, offering a balance between performance and cost.

### Common Use Cases

- **File Sharing**: Provides shared storage for applications and users, enabling scenarios like home directories and departmental shares.
  
- **Lift and Shift Applications**: Allows migration of existing on-premises applications to Azure without significant changes to the codebase.
  
- **Application Data Storage**: Stores configuration files, logs, metrics, and other data essential for applications running in Azure.
  
- **Backup and Disaster Recovery**: Serves as a target for backups and facilitates recovery solutions for on-premises and cloud data.

### Integration with On-Premises Environments

Azure Files supports hybrid cloud scenarios:

- **Azure File Sync**: Synchronize on-premises Windows Servers with Azure file shares for local access performance and cloud scalability.
  
- **Identity-based Authentication**: Integrates with Active Directory Domain Services (AD DS) for seamless authentication and access control.
  
- **Multi-Protocol Access**: Supports both SMB and NFS protocols on the same file share, simplifying mixed-environment deployments.

### Security Features

- **Encryption at Rest and In Transit**: Data is encrypted using Azure Storage Service Encryption (SSE) and supports SMB 3.0 encryption for secure data transfer.
  
- **Access Control**: Implements granular permissions using role-based access control (RBAC) and supports shared access signatures (SAS) for delegated access.
  
- **Network Security**: Integrates with virtual networks and supports private endpoints and firewall rules to restrict access.

### Performance and Scalability

- **High Scalability**: Capable of scaling up to petabytes of storage and thousands of concurrent clients.
  
- **Performance Tiers**: Offers different performance tiers to match workload requirements, allowing optimization of cost and performance.
  
- **Dynamic Scaling**: Automatically scales to meet the demands of your workloads without the need for manual intervention.

### Getting Started

To begin using Azure Files:

1. **Create a Storage Account**: Set up a storage account via the Azure Portal, Azure CLI, or Azure PowerShell.

2. **Create a File Share**: Within the storage account, create a new file share, selecting the appropriate performance tier and protocol (SMB or NFS).

3. **Mount the File Share**:

   - **Windows**: Use File Explorer or command-line tools to map the network drive.
   - **Linux**: Mount the file share using the CIFS or NFS client.
   - **macOS**: Use the `Connect to Server` option in Finder or mount via the command line.

4. **Manage and Monitor**: Utilize Azure tools and dashboards to monitor performance, set up alerts, and manage access and security settings.

For detailed instructions and best practices, refer to the [Azure Files documentation](https://learn.microsoft.com/azure/storage/files/).

## Start Here:

### `files-create-fileshare.ps1`

This script creates a new Azure fileshare for the storage of your shared files. All your files will be stored within the fileshare this script creates.

## Fileshare Scripts

### `files-create-directory.ps1`

This script creates a directory within your Azure fileshare.

### `files-upload-file.ps1`

This script uploads a single file to your Azure fileshare.

### `files-list-allitems.ps1`

This script lists all items and directories within your Azure fileshare.

### `files-list-directories.ps1`

This script lists all directories within your Azure fileshare.