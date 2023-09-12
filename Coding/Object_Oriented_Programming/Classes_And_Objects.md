# Describe the relationship between classes and objects

In objected-oriented programming languages, classes can be thought of as the blueprints for objects whilst objects act as the actual instance of that type of class.

## Example

For example, if you had a Car class then you might instantiate a car object like so:

```csharp
Car car1 = new Car();
```

The above line of code would use the Car class as a blueprint. The variable name car1 would need to point to a type of Car and in this instance would point to the newly created object. The Car class might look something like this:

```csharp
class Car
{
	public string make = "Ferrari";

	public Car()
	{

	}
}