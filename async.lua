local counter = 0

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
  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'get', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;)V', counter, url, headers)

  return counter
end
AddFunctionExport('GetAsync', Async_GetParams)

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
