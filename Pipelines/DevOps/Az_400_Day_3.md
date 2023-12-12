# DevSecOps

DevSecOps is implementing DevOps practices with security in mind.

- Security first
- Don't hardcode passwords
- Run automated tests
- Run vulnerability analysis on open source analysis
- Microsoft Defender for Cloud
- Microsoft Defender for Identity, which protects against advanced threats, compromised identities, and malicious insider actions
- Monitoring
- Code quality tools like SonarCloud
- Azure Policies can be set in Azure in order to enforce certain standards in the cloud, and integrates with Azure DevOps to enforce these policies in pipelines. For example you could make it so that you can only deploy to certain regions in Azure. This can be done in portal, az cli or Azure PowerShell.
- Azure Blueprints to create blueprints for how to do things in the cloud
- Resource locks to prevent deletion, modification if you want etc.

# OWASP
Organisation that sets secure coding practices

# Microservices

Microservices are independently deployable services that together form an application. As opposed to having a monolithic service which contains all the parts together. Loosely coupled.

For example, a monolithic service might have a user interface, business layer, and data interface all together, whereas you could instead have all three separately. Good for separation of concerns, can improve performance of application. Can be run in separate containers.

# Containers

Containers are isolated environment that runs microservices, next-gen virtualisation, does not need the whole OS. Still runs off of an image. Build pipelines can produce container images.

Container images can be stored in Azure Container Registry.

Repos -> Build Pipeline -> Produce Container Image -> Place Container Image in Container Registry -> Accessed by the release pipeline -> Deploys the image over the infrastructure 

# Notes about build and release pipelines

In the past, you would have a build pipeline which would create the software binaries and a release pipeline to deploy that artifact. Now we use multi-stage pipelines that can do it all. When handling release pipelines, just realise that it takes an artifact from the build pipelines.

# How to manage and pass sensitive information into Pipelines

There are multiple ways you can do this:

- Using variables passed in from Azure DevOps variable groups in the task
- Using KeyVaults to pass in the secrets

Keyvaults contain key/value pairs

You can create a variable group connected to a key vault in azure devops by linking to a keyvault after you have set the list and get on that keyvault.

# Infrastructure as Code

Deploying resources as code

Examples of technologies which can do IaC:

Chef, Puppet, Ansible, Terraform

Template types are Azure ARM and Azure BICEP

Manual deployments lead to inconsistencies and mistakes in deployment, whereas IaC is more consistent.

Imperative vs declarative

Imperative is concerned with the procedure of how to deploy something

Declarative is concerned with the end state, so is more functional

Idempotence:
Ability to apply one or more operations against a resource, resulting in the same outcome

You can use export template in azure to get the ARM/ Bicep template of a resource, so you can use these templates in your pipeline

You can use key/value pairs from keyvaults as parameters in ARM templates

# Azure Automation

You can run PowerShell scripts as runbooks (you can also use Python to do the same things)

You can use Desired State Configuration

Update Management

# Azure Bicep

Azure Bicep is the next revision of the ARM template formula to make it more human readable



