execute unless entity @s[type=player] run return run function dorklib:exception {args:{message:"Expected to run as a player"}}
execute unless data storage do:io args.function run return run function dorklib:exception {args:{message:"Expected a \"function\" argument"}}

# Stop early if the player is not looking at anything
execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",looking_at:{}}}} run return 1

# validate arguments
scoreboard players set #success dorklib.var 0
execute store success score #success dorklib.var run function dorklib:impl/do/target/looking_at/validate_function with storage do:io args
execute if score #success dorklib.var matches 0 run return run function dorklib:exception {args:{message:"The \"function\" must be a valid namespaced ID"}}

scoreboard players reset @a dorklib.var
scoreboard players set @s dorklib.var 1
scoreboard players set #being_looked_at dorklib.var 0
execute at @s run tag @e[x=0,type=!marker] remove dorklib.looking_at_candidate
function dorklib:impl/do/target/looking_at/target_entity with storage do:io args
scoreboard players reset @s dorklib.var

return 1
