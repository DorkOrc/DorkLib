execute unless entity @s[type=warden] run return run function dorklib:exception {args:{message:"Expected to run as a warden"}}
execute unless data storage do:io args.function run return run function dorklib:exception {args:{message:"Expected a \"function\" argument"}}

# validate argument
scoreboard players set #success dorklib.var 0
execute store success score #success dorklib.var run function dorklib:impl/do/target/anger_suspects/validate_function with storage do:io args
execute if score #success dorklib.var matches 0 run return run function dorklib:exception {args:{message:"The \"function\" argument must be a valid namespaced ID"}}

# run function as entities
data modify storage dorklib:main functions."do:target/anger_suspects".anger_suspects set from entity @s anger.suspects
execute if data storage dorklib:main functions."do:target/anger_suspects".anger_suspects[0] run data modify storage dorklib:main functions."do:target/anger_suspects".anger_suspects[].function set from storage do:io args.function
execute if data storage dorklib:main functions."do:target/anger_suspects".anger_suspects[0] run function dorklib:impl/do/target/anger_suspects/target_entity with storage dorklib:main functions."do:target/anger_suspects".anger_suspects[-1]

return 1
