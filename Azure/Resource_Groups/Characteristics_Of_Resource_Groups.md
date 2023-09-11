A resource group is a container inside an Azure subscription that can hold resources. Examples of resources that can be held inside Resource Groups are Key Vaults where secrets can be stored or Storage Accounts where file storage, blob storage, table storage or queue storage can be put in. Other examples include SQL databases, App services (WebApps, FunctionApps etc) and Virtual Machines. Resources can be deployed into resource groups through ARM or Bicep templates and these will configure the resources that you want to deploy with variables placed in via YAML files in an Azure Pipeline.

You can also use PowerShell to do different things such as Listing and Deleting resource groups.

For listing resource groups in a given subscription:

```ps1
Get-AzResourceGroup
```

For deleting a resource group:
```ps1
Remove-AzResourceGroup -Name exampleGroup
```

where exampleGroup is a variable to be swapped out with the Resource Group you want deleted.

You can also deploy resource groups without an ARM or bicep template, using PowerShell (with these parameters switched out):

```ps1
New-AzStorageAccount -ResourceGroupName exampleGroup -Name examplestore -Location westus -SkuName "Standard_LRS"