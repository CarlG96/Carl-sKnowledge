A function or method is a piece of code that is called in order to get something to happen. Functions can be used to either return values or perform some action.

Functions or methods are used to abstract away code. It is much easier to understand this code in large file:

```C#
//some code
something.DoSomething();
//some code
```

than:
```C#
//some code
//contents of DoSomething()
//contents of DoSomething()
//contents of DoSomething()
//contents of DoSomething()
//contents of DoSomething()
//some code
```

Creating a method for something you want to use multiple times also decreases the lines of code needed for your file.

Functions have parameters that accept arguments. An example of a parameter would be:
```C#
int a
```
and an example of an argument that could be passed to that parameter would be:
```C#
1
```

Functions can also have default parameters. For example:
```C#
public void StandardMethod(int a = 5, int b)
{
	//do something
}
```

Here if no argument is given for the first parameter then it will default to 5. Default parameters must be put before ones without defaults so that your compiler understands where the arguments are being supplied.
