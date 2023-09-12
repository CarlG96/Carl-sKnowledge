In c#, try-catch blocks are used to handle code which you suspect will throw an error or has the potential to throw an error.

```C#
try
{
    // put the code here that may raise exceptions
}
catch
{
    // handle exception here
}
```

## Exception filtering

You can have a filter to do different things depending on the type of exception that is thrown. Here is an example:

```C#
try
{
	// put the code here that may raise exceptions
}
catch (DividByZeroException ex)
{
	//handle divide by zero
}
catch (InvalidOperationException ex)
{
	//handle invalid operation
}
catch (Exception ex)
{
	// handle other exceptions
}
```

Note: You can't have any other blocks after an Exception or standard catch block.