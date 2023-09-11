# Describe how to add a constructor in Visual Studio

<!--do not modify above this line-->
Constructors can be added via snippet in Visual Studio by typing 'ctor' and then tabbing it in. Otherwise you can manually add constructors in Visual Studio with code like:

```
private string _name;

public Car(string name)
{
	_name = name;
}
```

You can add methods to constructors as they are just methods that are called upon when a new object of that type is instantiated. 
