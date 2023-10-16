https://praveenkumarsreeram.com/2022/11/27/azure-devops-tips-and-tricks-23-how-to-view-the-secret-variables-of-a-variable-group/

```YAML
variables:
- group: <Your group here>
steps:
- powershell: |
    "the value: $(Your secret name here)" | Out-File -FilePath  $(Build.ArtifactStagingDirectory)\DisplaySecret.txt
- task: PublishBuildArtifacts@1
  inputs:
    PathtoPublish: '$(Build.ArtifactStagingDirectory)'
    ArtifactName: 'drop'
    publishLocation: 'Container'
```