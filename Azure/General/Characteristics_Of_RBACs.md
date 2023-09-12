RBAC stands for Role Based Access Control. This is how Azure decides whether to allow certain objects to access certain parts of Azure and decides what those objects can do.

## Security Principals

Security Principals is an object that represents a user, group, service principal or managed identity requesting access to Azure resources. Security Principals can be assigned roles and this is how Azure Resource Manager decides what access you can have. The site AzRolesAdvertizer is a third party site where you can check what each of the roles do. When assigning Roles to a Security Principal, scope can be specified, such as over an entire subscription, an entire resource group etc.

## Deny Assignments 

Deny assignments can be attached to any user, group, service principal or managed identity to explicitly block these things from performing certain actions.

## Azure Flowchart

Here is a flowchart of how ARM handles RBACs in order to allow or deny certain actions in Azure:

![Azure RBAC Flowchart](./evidencableimages/AzureRBACSflowchart.png)

In more explicit detail: (user means anything trying to gain access here)

1) The user acquires a token for ARM.

2) The user makes a REST API call to ARM.

3) Azure Resource Manager retrieves the role assignments and deny assignments from the resource that the user is trying to do something with.

4) If a deny assignment is targetted at the user, they are blocked access.

5) ARM narrows the role assignments that apply to this user.

6) ARM checks the Actions and NotActions of the roles the user has and whether they can perform the action.

7) They are blocked if they don't have the role.

8) Conditions of the role assignment are checked if they have the role, if there are no conditons the user is allowed to perform the action.

9) If there are conditions and the user meets them, they are allowed, otherwise they are blocked.

