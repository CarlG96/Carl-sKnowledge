PowerShell uses the terms Item and Child-Item when referring to things in the filesystem.

Providers can be found with Get-PSProvider command. It acts as an adaptor, and takes some kind of data storage, and makes it look like a disk drive. Different provider give different properties and capabilities, sometimes making certain actions impossible with certain providers.

# Navigating the Filesystem

cd and Set-Location both work similarly, with cd being an alias of Set-Location

You can create new items in PowerShell with this command, but as items are generic in PowerShell, you must specify what type you want:

```PowerShell
New-Item testFolder -ItemType Directory
```

PowerShell also contains a -LiteralPath parameter in many functions, which ignores wildcards