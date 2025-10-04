# arguments: input_id

# check if the ID is already registered, and if it is formatted correctly
scoreboard players reset #valid_id dorklib.var
execute store result score #valid_id dorklib.var run function dorklib:util/register_namespaced_id {target:"storage dorklib:main functions.'dorklib:util/decompose_namespaced_id'.namespaced_id"}
execute if score #valid_id dorklib.var matches 0 run return fail

$data modify storage dorklib:main functions."dorklib:util/decompose_namespaced_id".properties set from storage dorklib:registered_ids map."$(input_id)"
return 1
