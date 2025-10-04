# arguments: target

data modify storage dorklib:main functions."dorklib:util/decompose_namespaced_id" set value {}

$data modify storage dorklib:main functions."dorklib:util/decompose_namespaced_id".input_id set string $(target)
execute unless data storage dorklib:main functions."dorklib:util/decompose_namespaced_id".input_id run return fail

data modify storage dorklib:main functions."dorklib:util/decompose_namespaced_id".namespaced_id set from storage dorklib:main functions."dorklib:util/decompose_namespaced_id".input_id
execute store success score #valid_id dorklib.var run function dorklib:impl/dorklib/util/decompose_namespaced_id/main with storage dorklib:main functions."dorklib:util/decompose_namespaced_id"
execute if score #valid_id dorklib.var matches 0 run return fail

data modify storage dorklib:main functions."dorklib:util/decompose_namespaced_id".properties.id set from storage dorklib:main functions."dorklib:util/decompose_namespaced_id".input_id
$data modify $(target) set from storage dorklib:main functions."dorklib:util/decompose_namespaced_id".properties
return 1
