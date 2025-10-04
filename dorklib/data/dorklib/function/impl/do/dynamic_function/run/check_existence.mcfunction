# arguments: id

$execute unless data storage dorklib:dynamic_function dynamic_functions."$(id)" run return fail

$function dorklib:impl/do/dynamic_function/run/call with storage dorklib:dynamic_function dynamic_functions."$(id)"

return 1
