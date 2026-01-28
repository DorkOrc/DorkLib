execute unless entity @s[type=allay] run return run function dorklib:exception {args:{message:"Expected to run as an allay"}}
execute unless data storage do:io args.function run return run function dorklib:exception {args:{message:"Expected a \"function\" argument"}}

data modify storage do:io input set from entity @s Brain.memories.minecraft:liked_player.value
execute unless data storage do:io input run return 1
return run function do:target/uuid
