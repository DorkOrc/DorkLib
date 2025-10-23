execute unless entity @s[type=item] run return run function dorklib:exception {args:{message:"Expected an Item"}}
execute unless data storage do:io args.function run return run function dorklib:exception {args:{message:"Missing argument: \"function\""}}

data modify storage do:io input set from entity @s Owner
execute unless data storage do:io input run return 1
return run function do:target/uuid
