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

# Positional Parameters

Positional parameters are listed with square brackets around only the parameter name and the parameter name can be left off when calling the command.

```PowerShell
[-Path] <String[]> [-Stream <String[]>]...[-Filter <String>]
```

If an optional parameter is positional, then it will be listed like this:

```PowerShell
[[-Stream] <string[]>]
```
with double brackets around the parameter name.

-Full

Using the -Full parameter after get help will give you the full details about the command and the parameters it takes and requires you to press space to keep going. It will tell you whether it is required, positional, accepts pipeline input, accepts wildcard characters etc

-Example

Will provide an example of the command

- Help *common* 

Will bring up a list of variables common to all cmdlets. These include things like -ErrorAction and -WhatIf (WhatIf doesn't necessarily work for every cmdlet).

- Online

The online parameter will get information from the internet to update anything, this could help if the version you have on your computer has out of date documentation.

# Get-Command

Can be used with asterisks to get commands you might want, can be used with the -Noun parameter and a list like:

```PowerShell
Get-Command -Noun file, output
```

