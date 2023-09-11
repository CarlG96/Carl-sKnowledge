Blob is one of the four main storage types in Azure.

BLOB is an acronym which stands for Binary Large OBject. Blob storage typically takes files that are unstructured, like images, videos, music files etc

Blob Storage has multiple levels: Storage Account, Container and Blob.

## Storage Account

The Storage Account is the unique namespace in Azure for your data. Every object that you stor in Azure Storage has an address that includes your unique account name. The base address for a storage account called mystorageaccount for example would be:

http://mystorageaccount.blob.core.windows.net


## Containers 
Containers organise blobs, much like a folder organises files. A storage account can hold an unlimited number of containers and a container can hold an unlimited number of blobs.
Container names must follow these rules:

1) Container names can be between 3 and 63 characters long.
2) Container names must start with a letter or number, and can contain only lowercase letters, numbers, and the dash (-) character.
3) Two or more consecutive dash characters aren't permitted in container names.

You will end up with a uri like:

https://myaccount.blob.core.windows.net/mycontainer

## Blobs
Blobs are any data that don't conform to a strict format. There are three types of blobs:

- Block blobs store text and binary data
- Append blobs are made up of blocks but are optimised for appending operations like logging data from VMs.
- Page blobs store random access files.

## How to Use Blob storage

In order to use blob storage you will need to have three separate clients types from Azure.Storage.Blob, the BlobServiceClient, the BlobContainerClient and the BlobClient.
Here is how to do this for emulated storage using Azurite but the connection string could be changed if you want to connect to an actual blob in file storage.

To connect to the storage account in emulation use (the UseDevelopment=True is the connection string):

```C#
BlobServiceClient blobServiceClient = new BlobServiceClient("UseDevelopmentStorage=True");
```
You then create a BlobContainerClient with the name of the Container you want to create (this assumes you want to use emulated storage otherwise use a real connection string) 
Note: All letters in a container name must be lower case and you must call the CreateIfNotExists method to create a container.
:

```C#
BlobContainerClient blobContainerClient = new BlobContainerClient("UseDevelopmentStorage=True", containerName);
blobContainer.CreateIfNotExists();
```
You then create a BlobClient and attach the file you want to upload:
```C#
BlobClient blobClient = new BlobClient(connectionString, containerName, blobName);
if(!blobClient.Exists()){
blobClient.Upload(filePath);
}
```
To download from the blob client to somewhere on your system:
```C#
blobClient.DownloadTo(dirPath, newFilePath);
```
To delete the container from the storage account:
```C#
blobServiceClient.DeleteBlobContainer(containerName);
```
