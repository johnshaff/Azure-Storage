# Azure PowerShell Scripts for Storage Account Management

This repository contains PowerShell scripts for managing Azure Storage Accounts and Blobs. The scripts are designed to automate the process of creating storage accounts, uploading blobs, and downloading blobs. Below is a detailed explanation of each script.

## Prerequisites

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