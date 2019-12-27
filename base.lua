JVM = 0

function OnPackageStart()
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
AddEvent('OnPackageStart', OnPackageStart)

function OnPackageStop()
  DestroyJava(JVM)
end
AddEvent('OnPackageStop', OnPackageStop)