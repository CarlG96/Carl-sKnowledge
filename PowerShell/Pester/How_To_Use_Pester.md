Pester is a testing and mocking framework for PowerShell. It can be used like this:

```PowerShell
BeforeAll {
    function Get-Planet ([string]$Name = '*') {
        $planets = @(
            @{ Name = 'Mercury' }
            @{ Name = 'Venus'   }
            @{ Name = 'Earth'   }
            @{ Name = 'Mars'    }
            @{ Name = 'Jupiter' }
            @{ Name = 'Saturn'  }
            @{ Name = 'Uranus'  }
            @{ Name = 'Neptune' }
        ) | ForEach-Object { [PSCustomObject] $_ }

        $planets | Where-Object { $_.Name -like $Name }
    }
}

Describe 'Get-Planet' {
    It 'Given no parameters, it lists all 8 planets' {
        $allPlanets = Get-Planet
        $allPlanets.Count | Should -Be 8
    }
    It 'Earth is the third planet in our Solar System' {
        $allPlanets = Get-Planet
        $allPlanets[2].Name | Should -Be 'Earth'
    }
    
    It 'Pluto is not part of our Solar System' {
        $allPlanets = Get-Planet
        $plutos = $allPlanets | Where-Object Name -EQ 'Pluto'
        $plutos.Count | Should -Be 0
    }
    
    It 'Planets have this order: Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune' {
        $allPlanets = Get-Planet
        $planetsInOrder = $allPlanets.Name -join ', '
        $planetsInOrder | Should -Be 'Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune'
    }
}
```
To run the above test you can use this command:
Invoke-Pester -Output Detailed <filepath>

# Importing functions from other files

Obviously, you don't want to write out the functions that you already have into the BeforeAll, so you can write out the filepath instead, like so:

```PowerShell
BeforeAll {
    . $PSScriptRoot/Get-Planet.ps1
}

Describe 'Get-Planet' {
    It 'Given no parameters, it lists all 8 planets' {
        $allPlanets = Get-Planet
        $allPlanets.Count | Should -Be 8
    }
}
```

Tests are written into It blocks and grouped by Describe or Context into groups. Should is used to express what is being tested, and it will fail the test if the condition is not true.

Invoke-Pester can then be used to run the tests in a given test file, and -Output Detailed can be used to show every test in the output, no matter if it passed or failed. Otherwise only failed tests, or whole files (when everything passed) are shown.