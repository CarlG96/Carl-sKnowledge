# Demonstrate If Statements

An if statement runs a bit of code in a subsequent codeblock based on whether or not a given condition evaluates to true or false (some languages such as JavaScript run based on truthy or falsy evaluations). 

A basic example in C# would be:

if (true) {
	// do stuff
}

The evaluation of the truth can also have logical operators in it. For example, you could test whether either of two cars is red with:

if (car1.GetColour() == "Red" || car2.GetColour() == "Red")
{
	//do stuff
}

If either of the cars was red the code block would run.

You could also set the condition so the code block will only run if BOTH cars are red. Like so: 

if (car1.GetColour() == "Red" && car2.GetColour() == "Red" )
{
	// do stuff
}

You can also set the condition so that the code block will run if something isn't the case, with the ! logical operator. Like so:

if(!car1.GetColour() == "Red")
{
	//do stuff
}

If you need to have multiple endpoints based on multiple conditions you can achieve this with else if and else controls. Like so:

if(car1.GetColour() == "Red")
{
	return "red";
}
else if(car1.GetColour() == "Blue")
{
	return "blue";
}
else {
	return "neither red nor blue";
}

You can also nest if-else statements, like so:

if(car1.GetColour() == "Red"){
	if(car1.GetMake() == "Ferrari")
	{
		return "You have a ferrari!";
	}
	else {
		return "Your red car is not a ferrari!";
	}
}
else
{
 return "You do not have a red car!";
}

