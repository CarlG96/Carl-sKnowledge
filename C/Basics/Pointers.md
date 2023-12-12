Pointers are variables that point to the memory address of another variable.

```C 
// This is how you declare pointers in C
 int x = 3;
 int *pX = &x;
 * creates a pointer variable of the type declared beforehadn and & means the memory address of a variable.

 // This is how you dereference a value
 printf("%d\n", *pX);
```

# Reasons to use pointers
Use pointers when passing to functions as this allows you to pass the memory address itself instead of passing a value which will copy the value. For things like structs this can be far more expensive.