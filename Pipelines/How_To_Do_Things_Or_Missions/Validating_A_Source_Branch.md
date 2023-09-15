```YAML
condition: eq(variables['Build.SourceBranch'], 'refs/heads/main')
```

This means that the stage will only be run if the current branch being used is the main branch. This is especially useful when deciding whether to create production environments and run the production pipeline.