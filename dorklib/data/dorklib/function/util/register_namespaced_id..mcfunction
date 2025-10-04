# arguments: namespaced_id

data modify storage dorklib:main functions."dorklib:util/register_namespaced_id" set value {}

$data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id set value "$(namespaced_id)"
execute unless data storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id run return fail

execute store success score #valid_id dorklib.var run function dorklib:impl/dorklib/util/register_namespaced_id/main
execute if score #valid_id dorklib.var matches 0 run return fail

return 1
