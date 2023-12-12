# Strings

Under the hood, strings are just arrays of characters which are null terminated with a 0.

```C
char mystr[] = {'h', 'e', 'l', 'l', 'o', 0};
char *myotherstring = "hello"; //null termination is automatically put in with double quotes by the compiler
```

# Operations on string

Operations on strings go on until they hit the null terminator
```C
strcpy(dest, src);
strncpy(dest, src, n);
```