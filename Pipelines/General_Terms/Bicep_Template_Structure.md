Bicep template structure consists of multiple elements, and the order of elements in a bicep file doesn't affect how the deployment is processed:

## Metadata 

Metadata provides extra information for about the bicep file, like its author and description etc. Here is an example:

```bicep
metadata description = 'deploys a key vault in Azure'
```

## Target Scope

Target scope is where you are deploying the resources to. Without including this in the bicep file it will default to resourceGroup level, there are four different allowed arguments for target scope: resourceGroup,subscription, managmentGroup and tenant.

```bicep
targetScope = 'resourceGroup'
```

## Parameters

Parameters are for things that need to change between different deployments. You specify with param paramName paramType = value. Here is an example:

```bicep
param webAppName string = 'webApp-${uniqueString(resourceGroup().id)}'
```

## Decorators

Decorators add extra constraints to the metadata or the parameters. Here is an example that makes the minimum viable string for the webAppName two characters long:

```bicep
@minLength(2)
param webAppName string = 'webApp-${uniqueString(resourceGroup().id)}'
```

You can also include an allowed values like this: 

```bicep
@allowed([
	'giraffe'
	'elephant'
	'camel'
])
param animal string
```

You can also add descriptions to parameters like so:

```bicep
@description('describes an animal')
param animal string = 'Giraffe'
```

## Using parameters

Parameters can be referenced in the bicep file using the parameter name, eg

```bicep
param vaultName string = 'keyVault${uniqueString(resourceGroup().id)}'

resource keyvault 'keyvault' = {
  name: vaultName
  ...
}
```

## Variables

Variables are created in a similar way, and can combine values:

```bicep
var uniqueStorageName = '${resourceGroupName}${animal}'
```
## Resource

The resource keyword defines a resource to deploy. The syntax goes:

```bicep
resource <symbolic-name> '<full-type-name>@<api-version>' = {
  <resource-properties>
}
```

A proper example is:

```bicep
resource stg 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'exampleStorage'
  location: 'northeurope'
  tages: tags
  identity: {
    type: 'SystemAssigned'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
```

## Parent/ child relationships

You can define child resources within parent resources in the resource declaration. Like so:

```bicep
resource storage 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'examplestorage'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }

  resource service 'fileServices' = {
    name: 'default'

    resource share 'shares' = {
      name: 'exampleshare'
    }
  }
}
```

You can see the brackets are nested.

## Modules

Modules are similar to their definition in Python, where you call on another bicep file to do something. So inside a bicep file you could have a module declared like so:

```bicep
module webModule './webApp.bicep' = {
  name: 'webDeploy'
  params: {
    skuName: 'S1'
    location: location
  }
}
```

## Outputs

You can define outputs to return from your bicep file like so:

```bicep
output storageEndpoint object = stg.properties.primaryEndpoints
```

This can then be got from something like a PowerShell script:

```PowerShell
(Get-AzResourceGroupDeployment `
  -ResourceGroupName <resource-group-name> `
  -Name <deployment-name>).Outputs.storageEndpoint.value
```




