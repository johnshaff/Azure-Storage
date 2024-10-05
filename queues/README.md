## Understanding Azure Queue Storage

Azure Queue Storage is a service for storing large numbers of messages that can be accessed from anywhere via authenticated calls using HTTP or HTTPS. It is designed for building flexible applications and separating functions for better durability across large workloads.

## Prerequisites for Executing Scripts in the Queue Directory

Before running the scripts, ensure you have:

- Both the Azure PowerShell module and Azure CLI installed.
- Logged into your Azure account using `Connect-AzAccount`.
- Logged into your Azure CLI using `az login`.
- A resource group and storage account (or use the script to create one).

### Key Concepts

- **Storage Account**: The top-level namespace for all your Azure Storage data objects, including queues, blobs, tables, and files.

- **Queue**: A queue contains a set of messages. It can hold millions of messages, up to the total capacity limit of a storage account.

- **Message**: Each message can be up to 64 KB in size. Messages are typically text but can be in any format, as long as they are serialized to a string.

### Features

- **Asynchronous Messaging**: Enables asynchronous communication between application components, improving scalability and resilience.

- **Scalability**: Capable of handling millions of messages, making it suitable for high-volume workloads.

- **Time-To-Live (TTL)**: Messages can have a specified TTL, after which they are automatically deleted if not processed.

- **Poison Message Handling**: Messages can be dequeued multiple times if not processed successfully, allowing for custom poison message handling strategies.

### Common Use Cases

- **Workload Decoupling**: Separating application components to improve reliability and scalability by allowing them to communicate via messages instead of direct calls.

- **Task Scheduling**: Queueing tasks to be processed asynchronously, such as background jobs, batch processing, or order processing.

- **Load Leveling**: Smoothing out intermittent heavy loads by queueing requests and processing them at a manageable rate.

- **Monitoring and Logging**: Collecting logs or telemetry data asynchronously to reduce the performance impact on the main application.

### Interacting with Queues

- **Adding Messages**: Applications can send messages to a queue via authenticated HTTP/HTTPS calls.

- **Retrieving Messages**: Messages can be retrieved from the queue for processing. Once processed, they should be deleted from the queue.

- **Peeking Messages**: Allows you to look at a message without changing its visibility or dequeueing it.

- **Updating Messages**: Modify the contents of a queued message in-place, which is useful for updating the status or content.

### Security Features

- **Authentication and Authorization**: Supports Shared Key authorization and Azure Active Directory (Azure AD) integration for secure access.

- **Encryption**: Provides encryption at rest using Microsoft-managed keys or customer-managed keys in Azure Key Vault.

- **Shared Access Signatures (SAS)**: Allows for delegated access to queue messages with specified permissions and time constraints.

### Best Practices

- **Visibility Timeout**: Set an appropriate visibility timeout when retrieving messages to prevent other consumers from processing the same message while it's being handled.

- **Idempotent Operations**: Design message processing to be idempotent to handle duplicate messages or processing retries gracefully.

- **Message Size Optimization**: Keep messages as small as possible to improve performance and reduce storage costs.

- **Batching Operations**: Use batch operations when adding or retrieving multiple messages to improve efficiency.

### Integration with Other Azure Services

- **Azure Functions**: Can trigger functions when new messages arrive in a queue, enabling serverless processing.

- **Azure Logic Apps**: Integrate queue storage into workflows for automation and orchestration.

- **Azure Service Bus**: For advanced messaging features like topics and subscriptions, consider using Azure Service Bus.

### Getting Started

To begin using Azure Queue Storage:

1. **Create a Storage Account**: Set up a storage account via the Azure Portal, Azure CLI, or Azure PowerShell (see parent directory of repo).

2. **Create a Queue**: Within the storage account, create a new queue using the Azure Portal or programmatically.

3. **Add Messages**: Use the Azure Storage SDKs or REST API to add messages to the queue.

4. **Process Messages**:

   - **Retrieve**: Dequeue messages using the SDK or REST API.
   - **Process**: Handle the message according to your application logic.
   - **Delete**: Remove the message from the queue after successful processing.

5. **Monitor and Manage**: Use Azure Monitor and Storage Explorer to monitor queue health, message counts, and to manage queues and messages.

For detailed instructions and code examples, refer to the [Azure Queue Storage documentation](https://learn.microsoft.com/azure/storage/queues/).

## Queue Scripts

### `q-create-q.ps1`

This script creates a new Azure Queue in your storage account.

### `q-add-message.ps1`

This script adds a message to a pre-existing queue using Azure CLI.

### `q-retrieve-messages.ps1`

This script retrieves all messages in a pre-existing queue using Azure CLI.

### `q-delete-q.ps1`

This script deletes a specified queue.

### `queues-quickstart-tutorial-python.ipynb`

This is a python jupyter notebook taking you through Azure package installation, storage account authentication, queue creation, message send, retrieve, and final delete of messages and the queue itself.