The D in SOLID stands for Dependency Inversion Principle, or DIP.

DIP states that high-level modules should not depend on low-level modules, but both should depend on abstractions. High level modules are objects that depend on other objects to make them up. Low level modules would be things like properties which are strings, integers etc. In DIP, low-level modules should depend on high-level modules, and they should both depend on abstractions, instead of details. DIP prevents tightly coupled code.

With DIP, interfaces are useful because you can allow them to deal with the abstraction issue. So instead of dealing with concrete classes, you can now use abstractions. For example, if you had a CoffeeMachine class which took an object of type Coffee into its constructor, then even if you dependency injected it it would still be tightly coupled as it relies on the concrete class of Coffee. If instead it relied on an interface of ICoffee, then the type of coffee wouldn't matter, making it less tightly coupled with and allowing different implementations of ICoffee to be used in the constructor. This combined with the Liskov Substitution Principle allows your code to be loosely coupled and avoids the code breaking easily as well. This also ties in with the Open/Closed Principle as it allows you to add a new implementation of the ICoffee interface if you need to add new types of coffee.