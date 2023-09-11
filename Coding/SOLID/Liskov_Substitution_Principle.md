The L in Solid stands for Liskov Substitution Principle. The Principle states that if the S is a subclass of superclass T, then objects of type T shall be replacable by objects of type S without breaking the program.

## Preconditions and Postconditions, Covariance and Contravariance

In order to ensure that the Liskov Substitution Principle is followed, you should ensure that the return type of methods in a superclass is the same in subclasses (this is actually quite easy to avoid in C# as it is hard to get around). Covariance refers to the return type. You should also ensure that methods in subclasses have the same parameters as the superclass as otherwise this would cause code to not compile. Contravariance refers to the parameter type.

Preconditions refers to the idea you should not strengthen checks in the method that could throw exceptions or otherwise limit what can be used. For example, if you had a check in the superclass to ensure that an int input was larger than 10 and to otherwise throw an exception, you cannot have a check in the subclass that ensures the int is larger than 11 before throwing an exception, as 11 would be a valid input in the superclass but not a valid input in the subclass.

Postconditions refers to the idea you can't weaken checks of a postcondition (soomething that controls what gets returned or how something is interacted with) in the subclass. For example, if in the superclass you ensure an int getting returned has to be between 5 and 10 and in the subclass you ensure it is between 3 and 12, this could potentially interfere with the program and cause exceptions.

## Is a relationship
The Liskov Substitution Principle can be violated if the subclass is not an example of the parent class. For example if the parent class is a baguette and the subclass is a burger, it is not correct to say that a burger is a baguette, meaning that it is more likely things which change for the class' methods in the abstract sense, breaking the LSP. To avoid this, always consider whether the parent class can be substituted by asking 'is subclass x a superclass y?'.

## Interfaces help with not breaking the Liskov Substitution Principle
Using interfaces helps as instead of using inheritance relationships implementations must use the specific signatures for their methods, ensuring that the covariance and contravariance parts of LSP are adhered to. However, preconditions and postconditions must still be reviewed so that preconditions are not strengthened and postconditions are not weakened. Abstract classes could be used but because of some functions being allowed to be non virtual it can be easier to employ interfaces.
