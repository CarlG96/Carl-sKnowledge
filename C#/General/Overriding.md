Overriding is where a method in a base class is changed in the derived class. It requires using the virtual keyword in the base class method and the override keyword in the derived class method.

Example:
```C#
public class Animal
{
	public virtual void AnimalSound()
	{
		Console.WriteLine("I'm an animal sound!");
	}
}

public class Dog : Animal 
{
	public override void AnimalSound()
	{
		Console.WriteLine("Hello sir, I do declare I am a canine.");
	}
}
```