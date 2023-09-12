The when keyword in c# is used to filter exceptions based on a boolean expression (similar to if statements).

The syntax for hwo to use when statements is as follows:
```C#
catch (ExceptionType e) when (boolean expression)
{
	//do something
}
```

Here the block with 'do something' in will execute if an exception of Exception type is caught AND the boolean expression evaluates to true. A good use for this would be HttpRequestExceptions, where when could filter based on the type of exception returned in the Message property of the exception, for example:

```c#
var client = new HttpClient();
        var streamTask = client.GetStringAsync("https://localHost:10000");
        try
        {
            var responseText = await streamTask;
            return responseText;
        }
        catch (HttpRequestException e) when (e.Message.Contains("301"))
        {
            return "Site Moved";
        }
        catch (HttpRequestException e) when (e.Message.Contains("404"))
        {
            return "Page Not Found";
        }
        catch (HttpRequestException e)
        {
            return e.Message;
        }
```

Here different messages can be returned to identify which Http request issue is causing the exception to be thrown.

This also means that custom exceptions that you have made can have properties which might change and based on that you might want to use when depending on the custom properties. 

You might also want to handle exceptions differently depending on other factors present in your program and for this when is ideal as it allows different actions to be taken for the same exception being thrown.
