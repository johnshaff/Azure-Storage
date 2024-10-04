# Azure PowerShell Scripts for Storage Account Management

This repository contains PowerShell scripts for managing your Azure Storage Account and it's associated services. All scripts have been pre-tested with Azure using PowerShell 7.4.5. Azure Storage is actually a collection of diverse storage services for different storage purposes. Each directory within this repo is dedicated to one of these associated services and has a short explainer on the service and a breakdown of the scripts dedicated to that directory's service.

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

## Start Here

### `new-storage-account.ps1`

This script creates a new Azure Resource Group and Storage Account.



