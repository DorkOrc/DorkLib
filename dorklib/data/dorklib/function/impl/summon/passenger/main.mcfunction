# executing entity must exist and be rideable
execute unless entity @s run return run function dorklib:exception {args:{message:"No executing entity exists"}}
execute unless predicate dorklib:entity/rideable run return run function dorklib:exception {args:{message:"Executing entity cannot be ridden"}}

# the location at the executing entity must be loaded
execute at @s unless loaded ~ ~ ~ run return run function dorklib:exception {args:{message:"Executing entity is not in a loaded chunk"}}

# check if no NBT tags are specified. If none are present, a soft summon will occur
execute store result score #nbt_tags dorklib.var run data get storage dorklib:local functions."do:summon/passenger".nbt

# prepare NBT tags for strict summon
data remove storage dorklib:local functions."do:summon/passenger".nbt.UUID
data remove storage dorklib:local functions."do:summon/passenger".nbt.Pos
data modify storage dorklib:local functions."do:summon/passenger".nbt.Tags append value "dorklib.local.functions.do+summon++passenger.passenger"

# check if no function is specified
execute store success score #run_function dorklib.var unless data storage dorklib:local functions."do:summon/passenger"{function:""}
execute if data storage dorklib:local functions."do:summon/passenger"{function:""} run data modify storage dorklib:local functions."do:summon/passenger".function set value "_"

# validate inputs and summon passenger
tellraw @a {storage:"dorklib:local",nbt:'functions."do:summon/passenger"'}
execute at @s store success score #validated dorklib.var run function dorklib:impl/summon/passenger/summon with storage dorklib:local functions."do:summon/passenger"
execute if score #validated dorklib.var matches 1 run return 1
return run function dorklib:exception {args:{message:"Failed to validate arguments"}}
