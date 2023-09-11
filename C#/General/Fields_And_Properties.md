# Describe the similarities and differences between a field and a property

Fields are normal member variables in a class. Generally you should set your fields to
private and then use properties to get and set their values. Private field variable names should 
have an underscore before them to specify that they are private. Like so:

```C#
private int _integer = 1;
```

Properties allow you to change a field through special methods called accessors. They start with capital
letters to differentiate them from fields. For example:

```C#
public int Integer { get; set;} 
```
Or:
```C#
public int Integer { get { return _integer; } set { _integer = value; }}
```
This allows you to change and get the fields without actually directly modifying the private field and also allows you to create methods in the getter or setters which can validate or change certain things. For example, if you wanted a getter method for a name that error handled if a name was too long that would be easy to do with this method.

Value is a keyword for the purposes of the setter method and acts like a parameter for the setter method.

You can also only have a get with:

```C#
public int Integer { get; }
```

You use properties instead of fields so if you want to change the getters and setters you don't need to change already existing code with the capital letters and instead just need to change the getter and setter methods to better reflect what you want to do.

