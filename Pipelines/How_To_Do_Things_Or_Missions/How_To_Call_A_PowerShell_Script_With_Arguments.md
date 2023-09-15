```YAML
scriptPath: 
            '$(System.DefaultWorkingDirectory)/Powershell/SetUpIdentityProvider.ps1'
          arguments: 
            '
              -IdentityProviderDisplayName "$(IdentityProviderDisplayName)" 
              -AppRoleName "$(AppRoleName)" 
              -AppRoleDisplayName "$(AppRoleDisplayName)" 
              -AppRoleDescription "$(AppRoleDescription)"
            '
```