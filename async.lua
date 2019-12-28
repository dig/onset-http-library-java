local counter = 0

-- GET
local function Async_Get(url, headers)
  if url == nil then return end
  if headers == nil then headers = {} end

  counter = counter + 1
  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'get', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;)V', counter, url, headers)

  return counter
end
AddFunctionExport('GetAsync', Async_Get)

local function Async_GetParams(url, headers, params)
  if url == nil then return end
  if headers == nil then headers = {} end
  if params == nil then params = {} end

  counter = counter + 1
  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'get', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V', counter, url, headers, params)

  return counter
end
AddFunctionExport('GetAsync', Async_GetParams)

-- POST
local function Async_Post(url, headers, body)
  if url == nil then return end
  if headers == nil then headers = {} end
  if body == nil then body = "" end

  counter = counter + 1
  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'post', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V', counter, url, headers, body)

  return counter
end
AddFunctionExport('PostAsync', Async_Post)

local function Async_PostFields(url, headers, fields)
  if url == nil then return end
  if headers == nil then headers = {} end
  if fields == nil then fields = {} end

  counter = counter + 1
  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'post', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V', counter, url, headers, fields)

  return counter
end
AddFunctionExport('PostAsync', Async_PostFields)

-- PUT
local function Async_Put(url, headers, body)
  if url == nil then return end
  if headers == nil then headers = {} end
  if body == nil then body = "" end

  counter = counter + 1
  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'put', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V', counter, url, headers, body)

  return counter
end
AddFunctionExport('PutAsync', Async_Put)

local function Async_PutFields(url, headers, fields)
  if url == nil then return end
  if headers == nil then headers = {} end
  if fields == nil then fields = {} end

  counter = counter + 1
  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'put', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V', counter, url, headers, fields)

  return counter
end
AddFunctionExport('PutAsync', Async_PutFields)

-- HEAD
local function Async_Head(url, headers)
  if url == nil then return end
  if headers == nil then headers = {} end

  counter = counter + 1
  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'head', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;)V', counter, url, headers)

  return counter
end
AddFunctionExport('HeadAsync', Async_Head)

local function Async_HeadParams(url, headers, params)
  if url == nil then return end
  if headers == nil then headers = {} end
  if params == nil then params = {} end

  counter = counter + 1
  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'head', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V', counter, url, headers, params)

  return counter
end
AddFunctionExport('HeadAsync', Async_HeadParams)

-- DELETE
local function Async_Delete(url, headers, body)
  if url == nil then return end
  if headers == nil then headers = {} end
  if body == nil then body = "" end

  counter = counter + 1
  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'delete', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V', counter, url, headers, body)

  return counter
end
AddFunctionExport('DeleteAsync', Async_Delete)

local function Async_DeleteFields(url, headers, fields)
  if url == nil then return end
  if headers == nil then headers = {} end
  if fields == nil then fields = {} end

  counter = counter + 1
  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'delete', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V', counter, url, headers, fields)

  return counter
end
AddFunctionExport('DeleteAsync', Async_DeleteFields)

-- PATCH
local function Async_Patch(url, headers, body)
  if url == nil then return end
  if headers == nil then headers = {} end
  if body == nil then body = "" end

  counter = counter + 1
  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'patch', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V', counter, url, headers, body)

  return counter
end
AddFunctionExport('PatchAsync', Async_Patch)

local function Async_PatchFields(url, headers, fields)
  if url == nil then return end
  if headers == nil then headers = {} end
  if fields == nil then fields = {} end

  counter = counter + 1
  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'patch', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V', counter, url, headers, fields)

  return counter
end
AddFunctionExport('PatchAsync', Async_PatchFields)