# ARM Templates

ARM templates are written in JSON or Bicep and are used for the following purposes:

- Resource group templates can be used to deploy one or more resources into an Azure resource group
- Subscription templates are used to deploy resource groups, policies, and authorisations to an Azure subscription
- Management group templates are used to deploy subscriptions, nested management groups, policies, and authorisations into a management group.
- Tenant level templates are used to deploy nested management groups, policies, and authorisations into the Azure Active Directory.

# The Bicep language

Bicep is a Domain Specific Language which acts as an alternative way to write ARM templates.

# Azure Service Management 

Azure Service Management is the old and outdated version of Azure Resource Manager, it is not to be used!

# Reasons for using ARM and Bicep over Terraform

Because ARM and Bicep are made specifically for Azure, Terraform, which is multi-cloud, can often lag behind in terms of what it is capable of doing.

