# Demonstrate a try catch finally in C#

A try catch finally statement is an extension of the try catch block. The finally block is used to execute a given set of statements, whether an exception is thrown or not thrown. For example, if you open a file, it must be closed whether an exception is raised or not. Here is an example of a try-catch-finally statement

```C#
try {
	answer = num1 / num2;
}
catch (DivideByZeroException ex) 
{
	//handle divide by zero
}
catch (Exception ex)
{
	Console.WriteLine(ex.message);
}
finally 
{
	Console.WriteLine($"{num1} {num2}");
}
```