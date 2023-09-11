Azure CLI is a cross-platform command-line tool that can be used in PowerShell to connect and affect resources in Azure. An example:

```PowerShell
az login
```
Another way to login with az cli as a service principal is:

```PowerShell
az login --service-principal --username APP_ID --password PASSWORD --tenant TENANT_ID
```