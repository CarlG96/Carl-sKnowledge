## What is Table Storage?

Table Storage is a service that stores non-relational structured data in the form of key/attributes. It is stored in the cloud and is usually cheaper than SQL for similar volumes of data but obviously one downside is the lack of schema or relationships between models. You add Table Entities to Table Storage in order to add records to them.

## URLs for Table Storage

Table Storage URLs are in the form of:

http://<storage account name>.table.core.windows.net/<table name>

## Table Entities

A table is a collection of Table Entities. Table Entities are sets of properties, similar to database rows. One thing that is unique about Table Entities is that they do not all need the same properties but can exist in the same table. So for example Bob may have the properties of name and email, whilst Pat may have name and address, but not email. Properties are key-value pairs and an entity can have up to 252 properties. On top of that entities have three other properties which are included automatically (for a max of 255): a partition key, a row key and a timestamp. The PartitionKey and RowKey make up the primary key of the specific entity. The PartitionKey represents the partition that the table entity exists in in the table. The RowKey is a unique id within the partition of that table. The TimeStamp records the last time the entity was modified in the table.

## Microsoft Azure Storage Explorer for Testing

This can be used and connected to in tests in order to test thing to do with TableStorage usign the "UseDevelopmentStorage=true" argument as a connection string for the TableClient (you must be running Azurite for this). I can run Azurite using Start-Azurite because of my PowerShell Profile but otherwise can use this script in PowerShell:

'''PowerShell
& 'C:\Program Files\Microsoft Visual Studio\2022\Professional\Common7\IDE\Extensions\Microsoft\Azure Storage Emulator\azurite.exe'
'''