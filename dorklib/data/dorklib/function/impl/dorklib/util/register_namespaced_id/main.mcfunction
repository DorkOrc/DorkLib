# check if the ID is already registered, and if it is formatted correctly
scoreboard players reset #already_registered dorklib.var
execute store result score #already_registered dorklib.var run function dorklib:impl/dorklib/util/register_namespaced_id/check_already_registered with storage dorklib:main functions."dorklib:util/register_namespaced_id"
execute if score #already_registered dorklib.var matches 0 run return fail
execute if score #already_registered dorklib.var matches 1 run return 1

# check for hardcoded namespaces
data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".dorklib set value false

data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".check_hardcoded_namespace set string storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id 0 8
execute if data storage dorklib:main functions."dorklib:util/register_namespaced_id"{check_hardcoded_namespace:"dorklib:"} run return run function dorklib:impl/dorklib/util/register_namespaced_id/register_dorklib_namespace with storage dorklib:main functions."dorklib:util/register_namespaced_id"
execute if data storage dorklib:main functions."dorklib:util/register_namespaced_id"{check_hardcoded_namespace:"dorklib."} run data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".dorklib set value true
data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".check_hardcoded_namespace set string storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id 0 3
execute if data storage dorklib:main functions."dorklib:util/register_namespaced_id"{check_hardcoded_namespace:"do:"} run return run function dorklib:impl/dorklib/util/register_namespaced_id/register_do_namespace with storage dorklib:main functions."dorklib:util/register_namespaced_id"
execute if data storage dorklib:main functions."dorklib:util/register_namespaced_id"{check_hardcoded_namespace:"do."} run data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".dorklib set value true
data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".check_hardcoded_namespace set string storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id 0 10
execute if data storage dorklib:main functions."dorklib:util/register_namespaced_id"{check_hardcoded_namespace:"minecraft:"} run return run function dorklib:impl/dorklib/util/register_namespaced_id/register_minecraft_namespace with storage dorklib:main functions."dorklib:util/register_namespaced_id"

# parse other namespaces
execute store result score #length dorklib.var run data get storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id
execute if score #length dorklib.var matches 0 run data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".path set value ""
execute if score #length dorklib.var matches 0 run return run function dorklib:impl/dorklib/util/register_namespaced_id/register_implicit_namespace with storage dorklib:main functions."dorklib:util/register_namespaced_id"
execute if score #length dorklib.var matches 1 if data storage dorklib:main functions."dorklib:util/register_namespaced_id"{namespaced_id:":"} run data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".path set value ""
execute if score #length dorklib.var matches 1 if data storage dorklib:main functions."dorklib:util/register_namespaced_id"{namespaced_id:":"} run return run function dorklib:impl/dorklib/util/register_namespaced_id/register_empty_namespace with storage dorklib:main functions."dorklib:util/register_namespaced_id"
execute if score #length dorklib.var matches 1 run data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".path set from storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id
execute if score #length dorklib.var matches 1 run return run function dorklib:impl/dorklib/util/register_namespaced_id/register_implicit_namespace with storage dorklib:main functions."dorklib:util/register_namespaced_id"

execute store result storage dorklib:main functions."dorklib:util/register_namespaced_id".min int 1 run scoreboard players set #min dorklib.var 0
execute store result storage dorklib:main functions."dorklib:util/register_namespaced_id".max int 1 run scoreboard players set #max dorklib.var 1
function dorklib:impl/dorklib/util/register_namespaced_id/loop with storage dorklib:main functions."dorklib:util/register_namespaced_id"
execute if score #max dorklib.var = #length dorklib.var unless data storage dorklib:main functions."dorklib:util/register_namespaced_id".namespace run data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".character set string storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id -1
execute if score #max dorklib.var = #length dorklib.var unless data storage dorklib:main functions."dorklib:util/register_namespaced_id".namespace if data storage dorklib:main functions."dorklib:util/register_namespaced_id"{character:":"} run data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".path set value ""
execute if score #max dorklib.var = #length dorklib.var unless data storage dorklib:main functions."dorklib:util/register_namespaced_id".namespace if data storage dorklib:main functions."dorklib:util/register_namespaced_id"{character:":"} run data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".namespace set string storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id 0 -1
execute if score #max dorklib.var = #length dorklib.var unless data storage dorklib:main functions."dorklib:util/register_namespaced_id".namespace run data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".path set from storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id
execute if score #max dorklib.var = #length dorklib.var unless data storage dorklib:main functions."dorklib:util/register_namespaced_id".namespace run return run function dorklib:impl/dorklib/util/register_namespaced_id/register_implicit_namespace with storage dorklib:main functions."dorklib:util/register_namespaced_id"

execute if data storage dorklib:main functions."dorklib:util/register_namespaced_id".namespace if data storage dorklib:main functions."dorklib:util/register_namespaced_id"{namespace:""} run return run function dorklib:impl/dorklib/util/register_namespaced_id/register_empty_namespace with storage dorklib:main functions."dorklib:util/register_namespaced_id"
execute if data storage dorklib:main functions."dorklib:util/register_namespaced_id".namespace run return run function dorklib:impl/dorklib/util/register_namespaced_id/register_parsed_namespace with storage dorklib:main functions."dorklib:util/register_namespaced_id"

# register implicit namespace
return run function dorklib:impl/dorklib/util/register_namespaced_id/register_implicit_namespace with storage dorklib:main functions."dorklib:util/register_namespaced_id"
