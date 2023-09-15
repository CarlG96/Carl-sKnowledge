You can loop through environments by putting the environments into objects (this may not work exactly but definitely CAN work with a little tinkering).


```YAML
parameters:
  - name: stages
    type: object
    default:
      - stage: Sandbox
        variableGroup: nameOfVariablegroup.yml
        dependsOn: Build
      - stage: Dev
        variableGroup: nameOfVariablegroup2.yml
        dependsOn: DeploySandbox    
      - stage: PreProd
        variableGroup: nameOfVariablegroup3.yml
        dependsOn: Build
      - stage: Prod
        variableGroup: nameOfVariablegroup4.yml
        dependsOn: DeployPreProd

stages:
  - stage: Build
    displayName: Build
    jobs:
    - job:
      displayName: Build_Job

  - ${{ each stage in parameters.stages }} :
      - stage: Deploy${{ stage.stage }}
        displayName: Deploy ${{ stage.stage }} Environment
        dependsOn: ${{ stage.dependsOn }}
        variableGroup: ${{ stage.variableGroup }}
        jobs:
        - job: 
          displayName: "${{ stage.stage }}"
          steps:
            - script: echo Hello, world!
              displayName: 'Deploying to ${{ stage.stage }}'
```