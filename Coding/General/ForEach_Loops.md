# Demonstrate a foreach loop in C#, python, or PowerShell

## Foreach loops in c#

A foreach loop in c# is specifically designed to loop through arrays and collections. Here is an example of a foreach loop in C#:

foreach(string word in words)
{
	//do stuff
}

foreach can be used if the object you are enumerating over implements the IEnumerable interface. Unlike the for loop, you can't influence the order of the foreach loop.

## Foreach loops in Python

Python doesn't have a foreach loop statement but its for loop functions similarly to C#'s foreach loop. For example:

for button in buttons:
	// buttonize

## Foreach loops in PowerShell

Foreach loops work similarly in both C# and PowerShell. The foreach loop iterates through each line in a collection. Here is an example of a foreach loop in PowerShell:

$collection = 1..5
foreach ($item in $collection) {
Write-Host The value of Item is: $item
}
Write-Host End of foreach loop

This code creates a collection between from 1 to 5 and loops through them and writes out what the number is. At the end of the foreach loop it prints: 'End of foreach loop'
