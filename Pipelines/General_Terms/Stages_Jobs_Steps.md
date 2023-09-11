## Contrast

In YAML Pipelines, a pipeline is made up of stages, stages are made up of jobs and jobs are made up of steps. Stages, jobs and steps are lists in YAML so their syntax looks like this:

```YAML
tastyfruits:
- Apple:
	# Apple internals
- Orange:
	# Orange internals
- Strawberry:
	# Strawberry internals
- Mango:
	# Mango internals
```

with lines indicating that they are an item in the list.

## Stage

Stages are logical boundaries in the pipeline and is made up of a collection of jobs. A stage might deploy an entire environment or run a series of tests to ensure they are passing correctly or publish code artifacts.

## Job
Jobs make up stages. All of the steps on a single job run together on the same agent and are run in sequence(usually, there are some exceptions). An example of a job in a stage might be deploying a certain type of infrastructure (say a storage account) in a stage which deploys a whole environment to Azure.

## Step
Jobs are comprised of steps. For the example above of a job that creates a storage account, you might have multiple steps, for example one that checks if the storage account exists before deploying. Another example would be one step that deals with secrets stored in key vaults before using them in the next step and relying on a condition before running that step. Steps are the smallest building blocks of Azure pipelines and are just packaged scripts or procedures to be carried out in a job.

## Conditions
```YAML
dependsOn: <nameofstage,job,step>
``` 
is the syntax that can be used to make other stages, jobs or steps rely on previous ones succeeding before executing and allows you to create an execution flow.

You can also set custom conditions in pipelines to control the execution flow like so:

```YAML
- stage: B
  condition: and(succeeded(), eq(variables.isMain, true))
  jobs:
  - job: B1
    steps:
      - script: echo Hello Stage B!
      - script: echo $(isMain)
```
