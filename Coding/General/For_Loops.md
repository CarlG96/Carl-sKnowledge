# Demonstrate a for loop in C#, python, or PowerShell

## Basic for loop

for loop in C# to print 1, 2 and 3 to the console:

for(int i = 1; i < 4; ++i) 
{
	Console.WriteLine(i);
}

## Initialisation

The initial part of the for loop is where you can initialise variables, this is set before the code loop executes. You can set multiple variables here like so:

for(int i = 0, j = 0; i < loop.Length; ++i)
{
	//do stuff
}

You can also omit the initialisation variable, you might do that if you have a variable in the outer scope which you want to increment in the for loop and use in the for loop. An example would be this:

int i = 10;

for(; i > 0; --i)
{
	//do stuff
}

## End statement

The second part of a for loop is the condition upon which the for loop will end. In the above example, when i reaches 0 (potentially after the decrement operator is used), the loop will not run.

## Counter

The third part of the for loop is the counter variable, this is run at the end of every loop and is usually used to increment or decrement a particular variable. You can have multiple counters aswell. Examples of this in C# syntax would be:

for(int i = 1; i < 1000; i *= 10)
{
	//do stuff
}

for(int i = 1, j = 0; i < 5; i++, j--)
{
	//do stuff
}

You can also omit the counter variable, this might create an infinite loop unless a specific variable is set though.

for(int i = 0; i < 5;)
{
	i++;
}

You can also create an infinite for loop like so (not recommended but pretty cool to know):

for(;;)
{
	Console.WriteLine("I am never ending!");
}

## Nested for loop

You can also nest for loops inside each other like:

for(int i = 0; i < 10; ++i)
{
	for(int j = 0; j < 10; ++j)
	{
		for(int k = 0; k < 10; ++k)
		{
			return i + j + k;
		}
	}
}

Here are examples of for loops in other languages:

## Python: 

super_heroes = ["Iron Man", "Spiderman", "Thor", "Black Widow"]
for hero in super_heroes:
	print(hero)


### for loop else statements

Python also has optional else statements which can print at the end of for loops, like so:

for x in range(6):
	print(x)
else:
	print('ended')

## PowerShell:

A basic example of a for loop in PowerShell would be:

for ($i=1; $i -le 10; $i++) {$i,"`n"}

Which prints the numbers 1 to 10 in the PowerShell shell. It follows the basic formula of for loops in other languages but has the added benefit of being horrible to read.