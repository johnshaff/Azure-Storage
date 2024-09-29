# Azure PowerShell Scripts for Storage Account Management

This repository contains PowerShell scripts for managing Azure Storage Accounts and Blobs. All scripts have been pre-tested with Azure using PowerShell 7.4.5 Below is a quick summary on how to think of Azure Storage as well as a quick reference for each script in the repo.

## Understanding Azure Storage and Associated Services

1. **Azure Storage Account**:  
   Think of an Azure Storage account as a container that can hold different kinds of storage services. When you create an Azure Storage account, it gives you a space to store multiple types of data in different formats, but all within the same account.

2. **Blobs (Block Blobs)**:  
   This is for storing unstructured data like images, videos, backups, or large text files. A storage account can store blobs (organized in containers).

3. **Azure Data Lake Storage Gen2**:  
   This builds on top of blob storage and is optimized for big data analytics. It provides hierarchical namespace and better performance for working with large datasets. Again, you don’t need a separate account for Data Lake Storage—it uses the same Azure Storage account.

4. **Azure Files**:  
   This feature allows you to create file shares that can be accessed through SMB or NFS protocols. These file shares are also stored within the same storage account.

5. **Azure Queues**:  
   Azure Queue storage is for messaging between different parts of your application. You can store queues within the same Azure Storage account to enable communication between different services or applications.

6. **Azure Tables**:  
   This is for structured NoSQL data. You can store tables of key-value pairs, also inside the same Azure Storage account.

### To Summarize:
When you create a single Azure Storage account, it can store **all** of the following types of data:
- Block blobs (part of Azure Blobs)
- Data Lake files (if you use Data Lake Storage Gen2 features)
- Azure Files (file shares)
- Azure Queues (for message queuing)
- Azure Tables (for structured NoSQL data)

You don’t need separate storage accounts for each type of service. They can all coexist in the **same Azure Storage account**, though the kind of storage and SKU (like Standard or Premium) you choose can influence performance and redundancy for different types of data.

## Prerequisites for Executing Scripts

Before running the scripts, ensure you have:

- Azure PowerShell module installed.
- Logged into your Azure account using `Connect-AzAccount`.
- A resource group and storage account (or use the script to create one).

## Scripts Overview

### 1. `new-storage-account.ps1`

This script creates a new Azure Resource Group and Storage Account.

### 2. `blob-upload.ps1`

This script uploads files to a storage container in Azure. It retrieves the storage account, creates a container if necessary, and uploads files to different access tiers like Hot, Cool, and Archive.

### 3. `blob-download.ps1`

This script downloads blobs from a storage container in Azure to a local folder. It retrieves the storage account and downloads the specified blob to a designated directory.

### 4. `blob-calculate-totalsize.ps1`

Calculates the total size of blobs in all containers in a specified Azure storage account.