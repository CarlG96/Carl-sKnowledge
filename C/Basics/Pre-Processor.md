# What is the C Pre-Processor

The Pre-processor runs during the compilation process. The process goes like this:

- Preprocessor
- Compilation
- Assembling
- Linking

The Preprocessor in C takes directives (established with the # sign) and copies and pastes this into your code, so for example:

```C
#include <stdio.h>
```

Would place the stdio.h code into your code, before the stdio.c file is linked.

