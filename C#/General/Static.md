# Describe the `static` modifier

The static modifier causes something to belong to the type itself rather than a particular object. That way things are 'shared' across the class.

## Static fields

A static field on a class means that every instance of that class will have that particular field.

```C#
private static int num;
```

## Static properties

A static property allows you to get and set the static members of a class.

```C#
public static int Num { get => num; set => num = value; }
```

## Static methods

A static method is one that can be called without an instance of the class. Here is an example:

```C#
public static class Car
{
	public static int returnNumber()
	{
		return 1;
	}
}

Console.WriteLine(Car.returnNumber);
```

## Static classes

Static classes are used as containers for static methods. A good example of this would be a Math class that has mutliple different methods to carry out basic mathematical functions.
