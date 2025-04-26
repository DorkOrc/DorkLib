# get "id" argument
data modify storage dorklib:main functions."do:summon/passenger".id set string storage do:io input

# get "nbt" argument
execute store success score #nbt_tags dorklib.var if data storage do:io args.nbt
execute if score #nbt_tags dorklib.var matches 0 run data modify storage dorklib:main functions."do:summon/passenger".nbt set value {}

execute if score #nbt_tags dorklib.var matches 1 unless data storage do:io args.nbt{} run return run function dorklib:exception {args:{message:"NBT argument is not a compound"}}
execute if score #nbt_tags dorklib.var matches 1 run data modify storage dorklib:main functions."do:summon/passenger".nbt set from storage do:io args.nbt
execute if score #nbt_tags dorklib.var matches 1 run data remove storage dorklib:main functions."do:summon/passenger".nbt.UUID
execute if score #nbt_tags dorklib.var matches 1 run data remove storage dorklib:main functions."do:summon/passenger".nbt.Pos
execute if score #nbt_tags dorklib.var matches 1 run data modify storage dorklib:main functions."do:summon/passenger".nbt.Tags append value "dorklib.local.functions.do+summon++passenger.passenger"

# get "function" argument
execute store success score #run_function dorklib.var if data storage do:io args.function
execute if score #run_function dorklib.var matches 0 run data modify storage dorklib:main functions."do:summon/passenger".function set value "_"
execute if score #run_function dorklib.var matches 1 run data modify storage dorklib:main functions."do:summon/passenger".function set string storage do:io args.function

# executing entity must exist, be rideable, and be in a loaded chunk
execute unless entity @s run return run function dorklib:exception {args:{message:"No executing entity exists"}}
execute unless predicate dorklib:entity/rideable run return run function dorklib:exception {args:{message:"Executing entity cannot be ridden"}}
execute at @s unless loaded ~ ~ ~ run return run function dorklib:exception {args:{message:"Executing entity is not in a loaded chunk"}}

# validate inputs and summon passenger
execute at @s store success score #validated dorklib.var run function dorklib:impl/summon/passenger/summon with storage dorklib:main functions."do:summon/passenger"

execute if score #validated dorklib.var matches 1 run return 1
return run function dorklib:exception {args:{message:"Failed to validate arguments"}}
