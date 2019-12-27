# onset-http-library
Authors: Digital

### Features
* Sync.
* Get & Post requests.

We are slowly working on this, more will come such as Async.

### Installation
1. Create a folder inside your servers package folder called http, download all files from this repository and place them inside the http folder.
1. Edit your server_config.json to install http as a package.
1. Create a folder inside the root server directory called "jars", skip this if you already have one.
1. Download onset-http-library.jar from HERE and place inside jars folder.
1. Download OnsetJavaPlugin.dll from HERE and place inside plugins folder.

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
