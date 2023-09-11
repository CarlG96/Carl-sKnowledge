# Demonstrate a Switch Case in C#, python, or PowerShell

## C# switch case

switch(variable)
{
	case a:
		//do stuff
		break;
	case b: 
		//do stuff
		break;
	case c:
		//do stuff
		break;
	default:
		//do stuff
		break;
}

A switch case checks against each potential case in order. The break statements are required so that it doesn't continue to check against.
If none of the other cases are matched then the default case is triggered.

## Python switch case

You can simulate a switch case in Python using the match and case keywords. Here is an example:

match word:
	case 'Hello':
		print('Hello')
	case 'World':
		print('World')
	case 'Bob':
		print('Bob')
	case _:
		print('YAYAYAYA')

Here the variable word is checked against the cases like with the C# implementation. However there is no breaks and the default case is marked with an _.

## PowerShell switch case

$num = Read-Host "Enter a number"
>> Switch ($num){
>> 1 {'Run Action 1'}
>> 2 {'Run Action 2'}
>> 3 {'Run Action 3'}
>> }

This will get the user to set a variable called num and then will run one of the three statements depending on what the user inputted.
