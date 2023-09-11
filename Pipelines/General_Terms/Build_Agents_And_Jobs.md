Build agents run one job at a time in Azure Pipelines. Microsoft-hosted build agents are discarded after a single job so anything that changes the virtual machine cannot be used in the next job in the pipeline. Self-hosted agents would not have this problem but you would have to host them yourself.

## Parallel jobs

Parallel jobs respresent the number of jobs that Azure Pipelines can run in parallel at one time for your organisation. Obviously this doesn't affect things like the dependsOn property in pipelines as the jobs will still not run before the previous job is finished.
