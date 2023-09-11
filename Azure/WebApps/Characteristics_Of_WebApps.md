## Basic Premise

WebApps are Azure hosted infrastructure. They are one of the services available through the Azure App Service. They exist inside resource groups inside Azure. The App Service Plan in this resource group defines your costs, region and compute resources for your use of the Azure App Service (this includes things other than WebApps like FunctionApps etc).

## WebApps compared to other App Services

WebApps provide the platform for you to host web applications. Behind the scenes, WebApps handle the scaling and load balancing of your web application. You can deploy code into a WebApp (for example a WebAPI or a WebJob) and the WebApp will act as the infrastructure for it.