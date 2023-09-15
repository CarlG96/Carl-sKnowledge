# YAML file in the release branch

```YAML
schedules:
- cron: '0 0 * * *'
  displayName: Daily midnight build
  branches:
    include:
    - main
```

This can be changed and you can include more than one branch on the schedule.

```YAML
- cron: 0 8 * * Mon-Fri
```

The above can be used to make sure it only builds from Mon-Fri.

