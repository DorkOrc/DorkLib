execute unless entity @s run return run function dorklib:exception {args:{message:"Expected an entity"}}
execute unless data storage do:io args.function run return run function dorklib:exception {args:{message:"Missing argument: \"function\""}}

# validate arguments
scoreboard players set #success dorklib.var 0
execute store success score #success dorklib.var run function dorklib:impl/do/target/projectiles/validate_function with storage do:io args
execute if score #success dorklib.var matches 0 run return run function dorklib:exception {args:{message:"Invalid argument: Function must be a namespaced ID"}}
scoreboard players set #success dorklib.var 0
execute if data storage do:io args.type store success score #success dorklib.var run function dorklib:impl/do/target/projectiles/validate_type with storage do:io args
execute if data storage do:io args.type if score #success dorklib.var matches 0 run return run function dorklib:exception {args:{message:"Invalid argument: Type, if specified, must be a valid entity type or a valid hash-prefixes entity type tag"}}

# copy arguments
data modify storage dorklib:main functions."do:target/projectiles" set from storage do:io args
execute unless data storage do:io args.type run data modify storage dorklib:main functions."do:target/projectiles".type set value "#dorklib:projectiles"

# get this entity's UUID repr
function do:entity/get_entity_repr
data modify storage dorklib:main functions."do:target/projectiles".entity_repr set from storage do:io output

# find entities and run function as each of them
function dorklib:impl/do/target/projectiles/target_entities with storage dorklib:main functions."do:target/projectiles"
scoreboard players reset @s dorklib.var

return 1
