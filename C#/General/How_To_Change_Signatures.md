# Describe how to change signatures

You can change a methods/ constructors signature by changing the parameters that it takes and overloading the method. For example:
```C#
public int Hello(string word);
public int Hello(int num);
```

Have two different signatures because of their parameters being different. The return type does NOT affect the signature therefore you can't have overloaded methods that return different types as the compiler would not be able to differentiate which ones to use. For example:

```C#
public int Hello(string word);
public string Hello(string word);
```
would not compile as there would be two possible methods with the same signature.

You can change methods easily by putting in the arguments you want in the calling code and Ctrl + .ing in the parameters.