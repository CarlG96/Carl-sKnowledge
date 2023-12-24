# Ways of provisioning

In Azure, infrastructure can be created and changed by:

- The Azure Portal
- PowerShell (Azure PowerShell and Azure CLI)
- RESTful Http calls
- SDKs
- ARM Templates (and Bicep templates)

# Elasticity

Elasticity in the cloud refers to the ability to quickly put up and take down resources, can pay by the minutes, hour etc instead of having to buy a set amount (you still can though with reserved instances).

# What is IaC?

Modern approach for managing infrastructure. Uses config files to create or update infrastructure automatically. In Azure, this is written in ARM or Bicep templates, which are processed by ARM, the Azure Resource Manager.

# Example of an ARM template that will create a storage account

```json
{
    "name": "myStorageAccount",
    "type": "Microsoft.Storage/storageAccount",
    "apiVersion": "2021-02-01",
    "location": "westeurope",
    "kind": "storage",
    "sku": {
        "name": "Premium_LRS"
    }
}
```

# Reasons for using IaC

## DevOps

IaC allows devlopers and operators to work together top describe and configure any infrastructure needed by their application deployment. They can promote the infrastructure changes and the application artifacts to a test environment, and after verification to a production environment.

## Prevents Configuration Drift

If infrastructure is managed manually, then over time differences will occur between testing and production, or between resources in the same environment that should be configured exactly the same. If enough config drift happens, then you cannot use rely on test environments to do what you want, and prod environments may fail over time with strange bugs.

# Benefits of IaC

- Allows for automation
- Allows for a declarative approach
- Allows for a human readable format
- Version controllable
- Auditable
- Reviewable, standards can be enforced

# Declarative over Imperative

Here is an example of why declarative can be easier to use and read than imperative:

Declarative:

There should be a VM
The VM should have 4 cores
The VM should turn off overnight

Imperative:
If there is no VM:
    CreateVM()
If the VM does not have 4 cores:
    ScaleVM(4)
While 6pm < time < 6am:
    ShutdownVM()

# Azure Resource Manager

ARM is a RESTful API that you can use to list, create, update and delete all resources in your Azure Subscriptions.

## Control plane and data plane

Each interaction you make with Azure is either a control plane or a data plane operation. Control plane is used to manage resources in your subscription, and data plane is used to employ the capabilities exposed by your specific resource types. Example:

- Control plane creates an Azure SQL database
- Data plane allows yopu to connect to it.s
- Create a linux virtual machine through the control plane, you use the data plane to interact with it over the SSH protocol.

Azure Resource Manager URL is https://management.azure.com. You then add extra information to the api call url to do things with that particular resource/ subscription etc.
