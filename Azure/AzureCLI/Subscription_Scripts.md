In order to set the subscription you are in with the Azure CLI you can use this command:

```PowerShell
az account set -s <Subscriptionid>
```

In order to list the resources in a subscription:

```PowerShell
az group list
```

In order to create a resource group in the subscription:

```PowerShell
az group create --name <Name> --location <Location>
```