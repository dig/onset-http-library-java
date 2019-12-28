local Requests = {}

local function Async_Get(url, headers)
  if url == nil then return end
  if headers == nil then headers = {} end

  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'get', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;)V', #Requests, url, headers)

  return #Requests
end
AddFunctionExport('GetAsync', Async_Get)

local function Async_GetParams(url, headers, params)
  if url == nil then return end
  if headers == nil then headers = {} end
  if params == nil then params = {} end

  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'get', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;)V', #Requests, url, headers)

  return #Requests
end
AddFunctionExport('GetAsync', Async_GetParams)

local function Async_Post(url, headers, body)
  if url == nil then return end
  if headers == nil then headers = {} end
  if body == nil then body = "" end

  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'post', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V', #Requests, url, headers, body)

  return #Requests
end
AddFunctionExport('PostAsync', Async_Post)

local function Async_PostFields(url, headers, fields)
  if url == nil then return end
  if headers == nil then headers = {} end
  if fields == nil then fields = {} end

  CallJavaStaticMethod(JVM, 'dev/joseph/http/Async', 'post', '(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V', #Requests, url, headers, fields)

  return #Requests
end
AddFunctionExport('PostAsync', Async_PostFields)
