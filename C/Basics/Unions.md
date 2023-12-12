# Unions

Unions are a field that assign multiple labels of multiple types to the same memory location.


Unions are declared like so:

```C
union myunion_u {
    int x;
    char c;
    short s;
};
```

In practice:

```C
union myunion_u u;
u.x = 0x41424344

printf("%hx %hhx\n", u.s, u.c);
```