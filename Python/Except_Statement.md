In Python, a try-except statement works a lot like a try-catch block in C# in that it handles exceptions. For example, this is what a basic try-except looks like:

```Python
	try:
		print(x)
	except:
		print('Unable to print x!')
```

You can also have except blocks that run based on certain errors, laddering down like C# try catch blocks:

```Python
	try:
		# code
	
	except TypeError:
		print('Type error!')
	except ValueError:
		print('No value here')
	except:
		print('There appears to be an undefined problem!')
```

You can add else blocks which show up when nothing causes an exception:

```Python
	try:
		# code
	except:
		print("There's a blooming error, guvna!")
	else:
		print('No error here, guvna!')
```

You can also add finally blocks which run regardless of if an error is raised or not at the end of the try-except:

```Python
	try:
		#code
	except:
		# except statement
	finally:
		print('I will always run!')

```

