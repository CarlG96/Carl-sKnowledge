# Demonstrate a while loop in C#, python, or PowerShell

## Overview

A while loop is a type of loop in programming that occurs given a conditional statement. If the condition is true then the inner code block will run. If the condition is false then the code block will not run.

## C# while loop

Here is an example of a while loop in C#:

```csharp
while(true)
{
	// do stuff
}
```

This code will cause an infinite loop so is quite bad code. In order to improve it you could set a break statement given a condition like so:
```csharp
while(true)
{
	// do stuff
	if(cond)
	{
		break;
	}
}
```

## C# do while loop

A do while loop is mostly used if you DEFINITELY want a piece of code to run at least once but only want it to run afterwards if a particular condition is reached. The syntax is slightly different to a normal while loop given that it has a semi-colon on the end.

```csharp
do 
{
	// stuff
} while(cond);
```
## Nesting while and do while loops 

While and do while loops can be nested. Here is an example of a nested while loop in C#:

```csharp
while (condA)
{
	//do stuff
	while(condB)
	{
		//do stuff
	}
}
```

## Continue

Continue statements can be used in while loops to move to the next iteration

## While loops in Python

Python while loops are very similar to while loops in C# except for the general structure that Python provides. Here is an example of a nested for loop:

while true:
	//do stuff
	while condA:
		//do stuff
		while condB:
			pass

Note: here pass is used to make it so that no code executes. It is often used to avoid writing a function but still calling it.

## While loops in PowerShell

While loops work similarly in PowerShell. Here is an example of a while loop in PowerShell:

```python
$var = 1
while ($var -le 5)
{
Write-Host The value of Var is: $var
$var++
}
```

This while loop checks sets a variable to 1. It then checks to see if that variable is less than 5 and prints the value of the variable before incrementing it.