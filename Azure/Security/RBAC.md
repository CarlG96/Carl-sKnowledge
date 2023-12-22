# Role Based Access Control

Can be found in the Identity and Access Management tab. 

# Security Principal

Users, groups, service principals and managed identities.

# Role Definitions

Actions that you can or can't do, also data actions you can or can't do

```PowerShell
az role definition list -n Owner
```

Above command shows the role of Owner, along with its actions, notActions, dataActions and notDataActions.

# Scope

Management group, subscription, resource group, resource.

# Roles

Contain a list of role definitions, such as Owner, Reader and many other roles which are built in.