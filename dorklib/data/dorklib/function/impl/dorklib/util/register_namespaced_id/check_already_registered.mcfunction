# arguments: namespaced_id

$execute if data storage dorklib:registered_ids map."$(namespaced_id)" store success score #already_registered dorklib.var run data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id set from storage dorklib:registered_ids map."$(namespaced_id)".resolved_id
execute if score #already_registered dorklib.var matches 0..1 run return 1
return -1
$execute if function #$(namespaced_id) run function #$(namespaced_id)
