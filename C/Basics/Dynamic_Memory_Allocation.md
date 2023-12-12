# Dynamic memory allocation
In C, when you declare arrays or create memory space with structures, you are statically allocating the memory, and the values must be created at compile time instead of runtime.

In order to get around this, you can allocate memory on the heap. This code will allocate 64 bytes of memory on the heap

```C
malloc(64);
```

Here is an example use of malloc:

```C
int n = getN();
struct employee_t *my_employee = malloc(sizeof(struct employee_t) * n); //gives you a pointer to a struct, allocating memory on the heap equal to the value in bytes of an employee_t struct times n, which is calculated in the getN() function at runtime.
if (my_employee == NULL){ // Checks if the memory allocation failed.
    printf("Something went wrong\n"); 
    return -1 // Returns -1, which is the standard error code for a C program failing
}
```

# Freeing memory 

You NEED to give memory back once it is no longer being used, as you OS could potentially run out of memory on the heap, meaning you would crash.

Here is how you do this:

```C
free(my_employee); // Frees the memory from the heap 
my_employee = NULL; // Removes the dangling pointer, meaning you can't use that memory again without getting null reference.
```
