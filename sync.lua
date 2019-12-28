-- GET
local function Sync_Get(url, headers)
  if url == nil then return end
  if headers == nil then headers = {} end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'get', '(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;', url, headers)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Get', Sync_Get)

local function Sync_GetParams(url, headers, params)
  if url == nil then return end
  if headers == nil then headers = {} end
  if params == nil then params = {} end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'get', '(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;', url, headers, params)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Get', Sync_Get)

-- POST
local function Sync_Post(url, headers, body)
  if url == nil then return end
  if headers == nil then headers = {} end
  if body == nil then body = "" end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'post', '(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;', url, headers, body)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Post', Sync_Post)

local function Sync_PostFields(url, headers, fields)
  if url == nil then return end
  if headers == nil then headers = {} end
  if fields == nil then fields = "" end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'post', '(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;', url, headers, fields)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Post', Sync_PostFields)

-- PUT
local function Sync_Put(url, headers, body)
  if url == nil then return end
  if headers == nil then headers = {} end
  if body == nil then body = "" end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'put', '(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;', url, headers, body)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Put', Sync_Put)

local function Sync_PutFields(url, headers, fields)
  if url == nil then return end
  if headers == nil then headers = {} end
  if fields == nil then fields = {} end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'put', '(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;', url, headers, fields)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Put', Sync_PutFields)

-- HEAD
local function Sync_Head(url, headers)
  if url == nil then return end
  if headers == nil then headers = {} end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'head', '(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;', url, headers)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Head', Sync_Head)

local function Sync_HeadParams(url, headers, params)
  if url == nil then return end
  if headers == nil then headers = {} end
  if params == nil then params = {} end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'head', '(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;', url, headers, params)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Head', Sync_HeadParams)

-- DELETE
local function Sync_Delete(url, headers, body)
  if url == nil then return end
  if headers == nil then headers = {} end
  if body == nil then body = "" end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'delete', '(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;', url, headers, body)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Delete', Sync_Delete)

local function Sync_DeleteFields(url, headers, fields)
  if url == nil then return end
  if headers == nil then headers = {} end
  if fields == nil then fields = {} end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'delete', '(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;', url, headers, fields)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Delete', Sync_DeleteFields)

-- PATCH
local function Sync_Patch(url, headers, body)
  if url == nil then return end
  if headers == nil then headers = {} end
  if body == nil then body = "" end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'patch', '(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;', url, headers, body)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Patch', Sync_Patch)

local function Sync_PatchFields(url, headers, fields)
  if url == nil then return end
  if headers == nil then headers = {} end
  if fields == nil then fields = {} end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Sync', 'patch', '(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;', url, headers, fields)

  if _response == nil then return false end
  return _response
end
AddFunctionExport('Patch', Sync_PatchFields)