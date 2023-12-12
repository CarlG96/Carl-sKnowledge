The anatomy of a command in PowerShell goes something like this:

Command Parameter1 Parameter2 Parameter3

An example would be something like this:

```PowerShell
Get-Command -Verb Get -Module PSReadline, PowerShellGet -Syntax
```

Here the Get-Command is the command. The first parameter, Verb, takes a single value, Get. The second parameter takes the list of PSReadline, PowerShellGet. The third parameter is a switch parameter and doesn't take any arguments.

There are three types of command:

- A cmdlet, which is a written in .NET Core.
- A function, which is written in PowerShell's own scripting language.
- An application, which is an external executable, including command line utilities such as ping and ipconfig.

# Aliases

Using the Get-Alias command with the definition parameter being another command, you can get a shorthand to use instead of long names in PowerShell.

