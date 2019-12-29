# onset-http-library
Authors: Digital

**NOTICE: This is no longer maintained, I've made a much better version in a c++ plugin which cuts out loading the JVM part. Check it out here: https://github.com/dig/onset-http-plugin. Since the c++ version does not have async, you can still use this one for async requests until its added.**

### Features
* Sync & Async.
* GET, POST, PUT, HEAD, DELETE & PATCH requests.

### Installation
1. Create a folder inside your servers package folder called http, download all files from this repository and place them inside the http folder.
1. Install "http" as a package inside server_config.json.
1. Create a folder inside the root server directory called "jars", skip this if you already have one.
1. Download onset-http-library.jar from Releases ([HERE](https://github.com/dig/onset-http-library/releases)) and place inside jars folder.
1. Download OnsetJavaPlugin.dll (Windows) & OnsetJavaPlugin.so (Linux) from Releases ([HERE](https://github.com/dig/onset-http-library/releases)) and place inside plugins folder.
1. Ensure Java 8 JDK/JRE 64bit is installed.
1. Enable "OnsetJavaPlugin" as a plugin inside server_config.json.

### Example
```lua
local http = ImportPackage('http')

-- Synchronously send a get request to google.com and print its body
local _res = http.Get('https://google.com')
print (_res.body)

-- Synchronously send a post request to google.com and print the status code
local _res = http.Post('https://google.com', {
  authentication = "bearer 123"
}, {
  field1 = "hi field1",
  lol = "another field, any name as key"
})
print (_res.status)
```

### Functions
#### SetTimeouts
Sets the timeouts for sockets and requests.
```lua
http.SetTimeouts(socketMs, requestMs)
```
* **socketMs** Socket timeout in milliseconds. Default is 60000ms. Example: 60000
* **requestMs** Request timeout in milliseconds. Default is 10000ms. Example: 10000

#### Get (Sync)
Send a Get request.
```lua
http.Get(url, headers)
http.Get(url, headers, params)
```
* **url** The URL to send the request to. Example: https://google.com
* **headers** Table of headers to send. Example: { myHeader = "hi", anotherHeader = "lol", authentication = "bearer 123" }
* **params** Parameters to add to the request. Example: { apiKey = "123" }

Returns a table with body, status and statusText. Nil if failed.
```lua
{
  body = "",
  status = 200,
  statusText = "OK"
}
```

#### Get (Async)
Send a Get request.
```lua
http.GetAsync(url, headers)
http.GetAsync(url, headers, params)
```
* **url** The URL to send the request to. Example: https://google.com
* **headers** Table of headers to send. Example: { myHeader = "hi", anotherHeader = "lol", authentication = "bearer 123" }
* **params** Parameters to add to the request. Example: { apiKey = "123" }

Returns a request ID which can be used with event OnAsyncHTTPRequest (see below for more information).

#### Post (Sync)
Send a Post request.
```lua
http.Post(url, headers, body)
http.Post(url, headers, fields)
```
* **url** The URL to send the request to. Example: https://google.com
* **headers** Table of headers to send. Example: { myHeader = "hi", anotherHeader = "lol", authentication = "bearer 123" }
* **body** String body, could be JSON. Example: "Hello, I am the body of the POST request."
* **fields** Same as above but table is automatically parsed to JSON. Example: { key = "123", name = "Joseph" }

Returns a table with body, status and statusText. Nil if failed.
```lua
{
  body = "",
  status = 200,
  statusText = "OK"
}
```

#### Post (Async)
Send a Post request.
```lua
http.PostAsync(url, headers, body)
http.PostAsync(url, headers, fields)
```
* **url** The URL to send the request to. Example: https://google.com
* **headers** Table of headers to send. Example: { myHeader = "hi", anotherHeader = "lol", authentication = "bearer 123" }
* **body** String body, could be JSON. Example: "Hello, I am the body of the POST request."
* **fields** Same as above but table is automatically parsed to JSON. Example: { key = "123", name = "Joseph" }

Returns a request ID which can be used with event OnAsyncHTTPRequest (see below for more information).

#### Put (Sync)
Send a Put request.
```lua
http.Put(url, headers, body)
http.Put(url, headers, fields)
```
* **url** The URL to send the request to. Example: https://google.com
* **headers** Table of headers to send. Example: { myHeader = "hi", anotherHeader = "lol", authentication = "bearer 123" }
* **body** String body, could be JSON. Example: "Hello, I am the body of the POST request."
* **fields** Same as above but table is automatically parsed to JSON. Example: { key = "123", name = "Joseph" }

Returns a table with body, status and statusText. Nil if failed.
```lua
{
  body = "",
  status = 200,
  statusText = "OK"
}
```

#### Put (Async)
Send a Put request.
```lua
http.PutAsync(url, headers, body)
http.PutAsync(url, headers, fields)
```
* **url** The URL to send the request to. Example: https://google.com
* **headers** Table of headers to send. Example: { myHeader = "hi", anotherHeader = "lol", authentication = "bearer 123" }
* **body** String body, could be JSON. Example: "Hello, I am the body of the POST request."
* **fields** Same as above but table is automatically parsed to JSON. Example: { key = "123", name = "Joseph" }

Returns a request ID which can be used with event OnAsyncHTTPRequest (see below for more information).

#### Head (Sync)
Send a Head request.
```lua
http.Head(url, headers)
http.Head(url, headers, params)
```
* **url** The URL to send the request to. Example: https://google.com
* **headers** Table of headers to send. Example: { myHeader = "hi", anotherHeader = "lol", authentication = "bearer 123" }
* **params** Parameters to add to the request. Example: { apiKey = "123" }

Returns a table with status and statusText. Nil if failed.
```lua
{
  status = 200,
  statusText = "OK"
}
```

#### Head (Async)
Send a Head request.
```lua
http.HeadAsync(url, headers)
http.HeadAsync(url, headers, params)
```
* **url** The URL to send the request to. Example: https://google.com
* **headers** Table of headers to send. Example: { myHeader = "hi", anotherHeader = "lol", authentication = "bearer 123" }
* **params** Parameters to add to the request. Example: { apiKey = "123" }

Returns a request ID which can be used with event OnAsyncHTTPRequest (see below for more information).

#### Delete (Sync)
Send a Delete request.
```lua
http.Delete(url, headers, body)
http.Delete(url, headers, fields)
```
* **url** The URL to send the request to. Example: https://google.com
* **headers** Table of headers to send. Example: { myHeader = "hi", anotherHeader = "lol", authentication = "bearer 123" }
* **body** String body, could be JSON. Example: "Hello, I am the body of the POST request."
* **fields** Same as above but table is automatically parsed to JSON. Example: { key = "123", name = "Joseph" }

Returns a table with body, status and statusText. Nil if failed.
```lua
{
  body = "",
  status = 200,
  statusText = "OK"
}
```

#### Delete (Async)
Send a Delete request.
```lua
http.DeleteAsync(url, headers, body)
http.DeleteAsync(url, headers, fields)
```
* **url** The URL to send the request to. Example: https://google.com
* **headers** Table of headers to send. Example: { myHeader = "hi", anotherHeader = "lol", authentication = "bearer 123" }
* **body** String body, could be JSON. Example: "Hello, I am the body of the POST request."
* **fields** Same as above but table is automatically parsed to JSON. Example: { key = "123", name = "Joseph" }

Returns a request ID which can be used with event OnAsyncHTTPRequest (see below for more information).

#### Patch (Sync)
Send a Patch request.
```lua
http.Patch(url, headers, body)
http.Patch(url, headers, fields)
```
* **url** The URL to send the request to. Example: https://google.com
* **headers** Table of headers to send. Example: { myHeader = "hi", anotherHeader = "lol", authentication = "bearer 123" }
* **body** String body, could be JSON. Example: "Hello, I am the body of the POST request."
* **fields** Same as above but table is automatically parsed to JSON. Example: { key = "123", name = "Joseph" }

Returns a table with body, status and statusText. Nil if failed.
```lua
{
  body = "",
  status = 200,
  statusText = "OK"
}
```

#### Patch (Async)
Send a Patch request.
```lua
http.PatchAsync(url, headers, body)
http.PatchAsync(url, headers, fields)
```
* **url** The URL to send the request to. Example: https://google.com
* **headers** Table of headers to send. Example: { myHeader = "hi", anotherHeader = "lol", authentication = "bearer 123" }
* **body** String body, could be JSON. Example: "Hello, I am the body of the POST request."
* **fields** Same as above but table is automatically parsed to JSON. Example: { key = "123", name = "Joseph" }

Returns a request ID which can be used with event OnAsyncHTTPRequest (see below for more information).

### Events
#### OnAsyncHTTPRequest
Called when a async request has either been successful or failed.
```lua
function OnAsyncHTTPRequest(id, requestType, error, body, status, statusText)
  -- code here
end
AddEvent('OnAsyncHTTPRequest', OnAsyncHTTPRequest)
```
* **id** Unique identifier for the request you have sent. GetAsync & PostAsync will return a ID which can be compared to this. Example: 1
* **requestType** 0 for GET, 1 for POST, 2 for PUT, 3 for HEAD, 4 for DELETE and 5 for PATCH.
* **error** True for request failed, false for successful request.
* **body** Request body, usually HTML.
* **status** HTTP status code.
* **statusText** Text version of the HTTP status code.
