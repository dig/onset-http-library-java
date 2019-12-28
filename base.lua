JVM = 0

local function Base_OnPackageStart()
  local jar = io.open('./jars/onset-http-library.jar', 'r')
  if jar ~= nil then
    io.close(jar)
    
    JVM = CreateJava('./jars/onset-http-library.jar')
    print ('Created JVM with ID: ' .. JVM)

    LinkJavaAdapter(JVM, 'dev/joseph/http/Adapter')
    print ('Linked dev/joseph/http/Adapter as Adapter.')
  else
    error ('ERROR: onset-http-library.jar is missing from jars folder, http requests will not work. Please download from https://github.com/dig/onset-http-library.')
  end
end
AddEvent('OnPackageStart', Base_OnPackageStart)

function Base_OnPackageStop()
  DestroyJava(JVM)
end
AddEvent('OnPackageStop', Base_OnPackageStop)

local function Base_SetTimeouts(socket, request)
  if socket == nil or request == nil then return end

  local _response = CallJavaStaticMethod(JVM, 'dev/joseph/http/Config', 'set', '(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;', socket, request)
  if (_response == nil or _response == 0) then
    return false
  end

  return true
end
AddFunctionExport('SetTimeouts', Base_SetTimeouts)