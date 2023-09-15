The O in SOLID stands for Open-Close Principle. The Open Close Principle says that you should be able to extend existing classes, but that they should not be open for modification.

In practice, this means that because many classes may be dependent on that class, changing the functionality of that particular class could introduce many bugs. For this reason, you should not modify the existing functionality of the class. However, as classes may grow over time, you may need to change the code, so when this happens you can extend the existing class instead of modifying it.

As an example, say that you have a class that is an adaptor and has a port which connects to an API. If that API worked perfectly before but now requires you to authenticate yourself before making a request there are two ways you could modify the existing code. You could change the existing port code which otherwise makes a perfectly good request to add in authentication logic. This might break some of your tests and otehr parts of your code might break. Instead you could create a new class/ functionality inside the adaptor which would handle the authentication before the request is made, therefore leaving your current code untouched and meaning your class was only extended, not modified.