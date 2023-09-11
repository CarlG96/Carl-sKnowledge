In C#, you can catch multiple exception types by 'laddering' them in a try-catch block. There you can have multiple exception handlers which will handle the code depending on different exceptions

```C#
// Constructor to throw out random animal
Animal animal = new Animal();
try
{
	//checks whether the animal is a goat
	IsItAGoat(animal);
}
catch (CowException)
{
	Console.WriteLine("The animal is a cow!");
}
catch (PigException)
{
	Console.WriteLine("The animal is a pig!");
}
catch (Exception)
{
	Console.WriteLine("Something weird happened");
}
```