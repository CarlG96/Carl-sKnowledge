# Asymptotic Notation

Way of working out how long a computer program will take to run by seeing how many instructions the computer has to perform based on the size of the program's input. In terms of time complexity, the asymptotic notation will focus on the worst case scenario possible. This is because it is better to think of things this way so that in the worst case scenario you might know what is causing slowdown in your code.

## Execution count

Execution count is the non-general way of timing and is more accurate than asymptotic notation, but harder to quantify. For example, if the execution count of a function is 5Nsquared + 4n + 2 the asymptotic notation would be O(nsquared), becuase the n squared is the significant part.

## Big Theta notation Θ

The first subtype of asymptotic notation is big Theta (Θ). This is used when a program only has one case in terms of runtime (it won't get worse or better depending on values in n). 

## Big Omega notation Ω

Big omega notation is the best case scenario for a runtime of a program if the best and the worst runtimes would be different.

## Big O notation O

Big O notation is the most commonly used notation, and refers to the worst case scenario for the runtime.

## O(1) Constant time

Where a single instruction or set of instructions is run, regardless of the size of N. Here is a function in Python that is O(1) time complexity.

```Python
def greet(thing):
    print(f'Hello {thing}')
```

## O(log n) logarithmic time

Seen in search algorithms. NEED EXAMPLE

## O(n) Linear time

Where the amount of instructions directly correlates with the size of the collection. Here is a function in Python that is O(n) time complexity.

```Python
def go_through_collection(my_list):
    for i in my_list:
        print(str(my_list(i)))
```

## O(n * logn)

Seen in sorting algorithms NEED EXAMPLE

## O(n2) Polynomial time (when is raised to the second power, it is quadratic time)

Nested loops often have this time.

## O(2 to the n) Exponential time

You will often see this runtime in recursive algorithms. NEED EXAMPLE

## O(n!) Factorial runtime

You will often see this when you have to generate all of the different permutations of something. For instance, a program that generates all the different ways to order the letters "abcd" would run in this runtime.

# Space Complexity

Asymptotic notation can also be used to understand the space complexity of a program.

This function will have a constant runtime due to not creating any new variables:

```Python
def simple_loop(input_array):
  for i in input_array:
    print(i)
```

Space complexity doesn't count the space of the input, only what is created in the function. Languages that use pass by reference inherently decrease the amount of space complexity, and pointers in C and C++ doe the same thing.



