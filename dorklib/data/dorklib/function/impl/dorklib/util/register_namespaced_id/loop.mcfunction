# arguments: min, max

$data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".character set string storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id $(min) $(max)
$execute if data storage dorklib:main functions."dorklib:util/register_namespaced_id"{character:":"} run data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".path set string storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id $(max)
$execute if data storage dorklib:main functions."dorklib:util/register_namespaced_id"{character:":"} run return run data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".namespace set string storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id 0 $(min)

execute store result storage dorklib:main functions."dorklib:util/register_namespaced_id".max int 1 run scoreboard players add #max dorklib.var 1
execute if score #max dorklib.var = #length dorklib.var run return 0
execute store result storage dorklib:main functions."dorklib:util/register_namespaced_id".min int 1 run scoreboard players add #min dorklib.var 1
execute unless score #max dorklib.var >= #length dorklib.var run function dorklib:impl/dorklib/util/register_namespaced_id/loop with storage dorklib:main functions."dorklib:util/register_namespaced_id"
