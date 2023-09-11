An interface is like a class that other classes can be implemented from. Its methods and properties are all abstract but must be implemented in its derived classes. Interfaces are useful for generalising a range of methods and properties over a number of classes without giving specific implementation details. Interfaces cannot be instantiated and cannot contain fields.

Interface methods have semi-colons on the end and do not have bodies. They look like this:

```c#
interface IAnimal 
{
  void AnimalSound(); // interface method (does not have a body)
}
```