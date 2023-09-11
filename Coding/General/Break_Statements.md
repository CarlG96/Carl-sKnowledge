# Demonstrate the use of a break statement in a loop

A break statement is used to jump out of a loop. Here is an example of how it might be used:

for(int i = 0; ; ++i)
{
	Console.WriteLine(i);
	if(i >= 10)
	{
		break;
	}
}

The above code would print out the values of 0-10 and would stop at 10 without needing to set a condition upon which the for loop would end on the for loop itself.

## Breaks in switch statements

Breaks are particularly useful in switch statements as they prevent the next case 'laddering' down and executing the following code block.

For example:

switch(variable)
{
	case a:
	//do stuff
	break;
	
	case b:
	//do stuff
	break;

	default:
	//do stuff
	break;
}