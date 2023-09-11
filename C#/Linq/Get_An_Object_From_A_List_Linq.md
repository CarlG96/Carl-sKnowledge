# Get an object from a list based on a property (like getting a user from a list by display name)

This can be done using Linq statements. Firstly here is an example of returning a single employee from a list based on their age.

```C#
Employee first27YearOld = listOfEmployees.Where(employee => employee.Age == 27).FirstOrDefault();
```

You could also do:

```C#
List<Employee> all27YearOlds = listOfEmployees.Where(employee => employee.Age == 27).ToList();
```

To get all the employees that have an age of 27 into a list.