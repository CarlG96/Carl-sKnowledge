# Azure Security for Applications, Databases and Networks

## Azure Identity and Access Management (IAM)

In Azure, every user has an associated identity and permissions that enable them to access and manage resources in Azure based on their role and job responsibilities.

## Authentication meaning

Verifying the identity of a user. Using Microsoft Entra ID and MFA. Can also be used with on prem Active Directory.

## Authorisation meaning

What the user can do. Role Based Access Control can be used for this.

## Microsoft Entra ID

Microsoft Entra ID is the IAM system for Azure Portal and Microsoft 365. It has features such as Microsoft Entra ID Protection, Microsoft Entra risk detection, Microsoft Entra Connect for hybrid SSO and authentication (for use with on-prem Active Directory).

# Role Based Access Control (RBAC)

Use roles to give users permissions over scopes. Can be assigned to individuals, groups, service principals, or managed identities. Service Principals are derived from Application Registrations and Managed Identities can be used for easier credential stuff.

## MFA

MFA is used to protect against malicious actors who have got the credentials for access to a part of Azure.

## Conditional Access Policies (CAP)

These policies allow for more stuff to be protected with if-then logic

## Managed Identities

Feature of Microsoft Entra ID that help simplify the administration of credentials for Azure-deployed applications and other Azure resources. This identity resource helps eliminate the need for developers to manage and store their certificates or keys. Managed Identities are Service Principals, which are objects of identity on Azure that can be used for applications, services and integration in order to communicate with and access resources. Helpful alternative to using PAT tokens for Azure DevOps or keeping track of the expiration of Service Principal client tokens.

## Azure Key Vault

Used to store and oversee cryptographic keys, secrets and certificates for application authentication and encryption.

## Microsoft Defender, Microsoft Defender for Endpoints, Microsoft Defender for DevOps, Microsoft Defender for Containers, Microsoft Defender for App Service

Used to protect resources, endpoints, containers, app services and your DevOps IaC.

