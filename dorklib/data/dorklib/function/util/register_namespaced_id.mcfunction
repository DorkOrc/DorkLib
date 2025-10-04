# arguments: target

data modify storage dorklib:main functions."dorklib:util/register_namespaced_id" set value {}

$data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id set string $(target)
execute unless data storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id run return fail

execute store success score #valid_id dorklib.var run function dorklib:impl/dorklib/util/register_namespaced_id/main
execute if score #valid_id dorklib.var matches 0 run return fail

$data modify $(target) set from storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id
return 1
