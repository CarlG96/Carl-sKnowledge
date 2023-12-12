PowerShell allows you to use a pipeline to connect commands together. It allows you to pipe the output of one command to another command. It is used like so:

```PowerShell
Get-ChildItem | Where-Object Name -eq 'scripts'
```

You can use this pipe to export things to csvs, as json, xml, out-file etc. You can also use it to ConvertTo-Html and then pipe it to a file to use it as html.

NEVER USE THIS COMMAND:

```PowerShell
Get-Process | Stop-Process
```

