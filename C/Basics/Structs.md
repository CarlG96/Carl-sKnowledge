# Structs

Structs are blocks of memory that contain variables of different types.

They are declared like this:

```C
struct employee_t {
int id;
char firstName[64];
char lastName[64];
float income;
bool ismanager;
};
```

And you can use them like this: 

```C
struct employee_t Fred;
Fred.income = 100.00;
Fred.ismanager = true;
```

You can make arrays of any types you create.

# Special struct modifiers

Because optimisations can be put in on certain architectures, you can put certain modifiers to prevent this so that code can be run across multiple machines.

When declaring a struct, do it like so:

```C
__attribute__((__packed__)) struct employee_t {
    // internals
}
```
