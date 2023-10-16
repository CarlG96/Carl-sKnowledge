# The Help System

The Help System is the way in which you discover commands in PowerShell and it also gives you information on how to use them correctly.

Many PowerShell commands do not immediately have all the information available to them via the Help System, so 

```PowerShell
Update-Help
```

might need to be ran before using the Help System in order to download the information.

# Get-Help cmdlet and Help function

You can use Get-Help cmdlet or the Help function which wraps a function around it and pipes the output to less. This allows you to get information about cmdlets are available and, in the event you provide the name of a topic matches an existing topic, will show you information about the topics and parameters that can be used for it.

Example:
```PowerShell
Get-Help *event* # This will show any commands that involve the word event
Get-Help Get-EventS* # This will show any commands beginning with Get-EventS
Get-Help Get-EventSubscriber # This will show information about the specific command, called the summary help
```

# Conventions for PowerShell help

## Parameter Sets
The Get-Help cmdlet will provide a list of parameters for the command you have given it, like so:
```PowerShell
```SYNTAX
    Get-Item [-Stream <String[]>] [-Credential <PSCredential>] [-Exclude 
  <String[]>] [-Filter <String>] [-Force] [-Include
    <String[]>] -LiteralPath <String[]> [<CommonParameters>]
 
    Get-Item [-Path] <String[]> [-Stream <String[]>] [-Credential 
  <PSCredential>] [-Exclude <String[]>] [-Filter <String>] [-Force]
    [-Include <String[]>] [<CommonParameters>]
```
Here you can see there are two different parameter sets for Get-Help. This is because the separate command sets are very similar but you cannot have both -LiteralPath and -Path in the parameters you provide for obvious reasons. This is similar to an overload in other languages.

# Optional Parameters

Optional parameters are listed in square brackets, for example:
```PowerShell
[-Credential <PSCredential>]
```

# Mandatory Parameters

Mandatory Parameters are listed without square brackets.
```

