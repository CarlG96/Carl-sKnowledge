# Demonstrate Overloading

Overloading is the concept of Methods with the same name having different parameters, a different number of parameters or different return types.

You cannot have different return types for the same parameters. This is because there would be no way for the compiler to know which type to return from that Method call.

## Example of Overloading

```c#
public void DisplayName(int a)
{
	Console.WriteLine($"{a}");
}

public void DisplayName(int a, int b)
{
	Console.WriteLine($"{a} and {b}");
}

public string DisplayName(string a)
{
	return a;
}

// public string DisplayName(int a) This would not be valid as when the Method is called what would be returned? A string or void?
//{
	//return a.ToString();
//}
```

The first method displayName accepts a single integer and writes it to the console.
The second method displayName accepts two integers and writes them, one after the other, to the console.
The third method displayName accepts a string and returns that same string (the method is pretty redundant but proves you can have other return types.)
The fourth method is commented out as it is not valid.