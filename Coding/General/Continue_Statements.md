# Demonstrate the use of a continue statement in a loop

The continue statement is used to break out of a single iteration of a loop; unlike the break statement which will break out of the loop entirely.

## Example of a continue statement
```cs
for(int i = 0; i < 10; ++i){
	if(i == 7){
		continue;
	}
	Console.WriteLine(i);
}
```
The above code would print out the numbers 0-10 in the console, skipping 7.

Continue statements are useful as they allow you to avoid certain conditions in loops without breaking out of the loop entirely and having to deal with getting back into the loop.

## Example of a continue statement in a while loop

You might want to create a while loop that only executes part of its code depending on certain factors. Here is an example:
```cs
while(condA){
	//do stuff involving condB
	if(condB){
		continue;
	}
	//do stuff
}