This is to get around the problem of 

```PowerShell
Install-NuGetClientBinaries : Exception calling "ShouldContinue" with "2" argument(s): "Windows PowerShell is in 
NonInteractive mode. Read and Prompt functionality is not available."
```

To get around this you put this in your PowerShell script before installing any modules

```PowerShell
if ($Null -eq (Get-PackageProvider -Name NuGet -ErrorAction Ignore)) {
    Install-PackageProvider -Name NuGet -Force -Scope CurrentUser;
}
```

This will avoid the above problem.