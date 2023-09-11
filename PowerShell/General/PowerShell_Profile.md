## What is a PowerShell Profile?
A PowerShell Profile is a script that runs when PowerShell starts.

## Testing to see if you already have a PowerShell Profile
Type 
```PowerShell
test-path $profile
```
into the shell. If it returns False you do not have a PowerShell profile.

## How to create a PowerShell Profile

```PowerShell
New-Item -Path $profile -Type File -Force
```

Testing the path to the profile should now return True.

Then run:
```PowerShell
Get-ExecutionPolicy
```
and make sure it returns RemoteSigned. If it doesn't, run:
```PowerShell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## Opening the PowerShell Profile

Adding things to the PowerShell Profile

From there you can type:
```PowerShell
code $profile
```

To open up the script for your profile in PowerShell. You can then add scripts which will be executed every time you open PowerShell. For example:
```PowerShell
Write-Host "Remember, you are living the dream!"

function Get-Time {
    get-date -Format hh:mm
}

try {
	$Table = Import-CSV "C:\Users\CGardiner\OneDrive - Ordnance Survey\Documents\WindowsPowerShell\jokes.csv"

	$Generator = New-Object System.Random
	$Index = [int]$Generator.next(0, $Table.Count - 1)
	$Reply = $Table[$Index].Joke

	Write-Host "$Reply"
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```
Would tell you you are living the dream, allow you to check the time by typing get-time, and it would tell you a joke from a csv file in your folder structure. Here is the proof:

![Powershell Jokes proof](./evidencableimages/powershelljokes.png)

