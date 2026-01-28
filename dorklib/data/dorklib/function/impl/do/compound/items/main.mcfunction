# verify that the input is a compound
execute unless data storage do:io input{} run return run function dorklib:exception {args:{message:"The input must be a compound"}}

# make a temporary copy of the compound (this will be destroyed)
execute store result score #remaining_keys dorklib.var run data get storage do:io input
execute if score #remaining_keys dorklib.var matches 0 run return run data modify storage do:io output set value []

# iterate through the pretty printed text component formatting to separate keys from values
data modify storage dorklib:main functions."do:compound/items".value set from storage do:io input
data modify storage do:io output set value []
execute if entity @s in minecraft:overworld run function dorklib:impl/do/compound/items/loop
execute unless entity @s summon marker if function do:entity/remove in minecraft:overworld run function dorklib:impl/do/compound/items/loop

return 1
