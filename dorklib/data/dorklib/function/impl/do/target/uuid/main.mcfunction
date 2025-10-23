execute unless data storage do:io args.function run return run function dorklib:exception {args:{message:"Missing argument: \"function\""}}
execute unless data storage do:io input[3] run return run function dorklib:exception {args:{message:"Invalid argument: Input should be a UUID"}}
execute if data storage do:io input[4] run return run function dorklib:exception {args:{message:"Invalid argument: Input should be a UUID"}}

# convert integer array into uuid repr
data modify storage dorklib:main functions."do:target/uuid" set value {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,10:0,11:0,12:0,13:0,14:0,15:0,16:0,17:0,18:0,19:0,20:0,21:0,22:0,23:0,24:0,25:0,26:0,27:0,28:0,29:0,30:0,31:0}
function dorklib:impl/do/target/uuid/set_digit_values
function dorklib:impl/do/target/uuid/set_digit_chars with storage dorklib:main functions."do:target/uuid"
data modify storage dorklib:main functions."do:target/uuid".function set from storage do:io args.function
scoreboard players set #success dorklib.var 0
execute store success score #success dorklib.var run function dorklib:impl/do/target/uuid/target_entity with storage dorklib:main functions."do:target/uuid"
execute if score #success dorklib.var matches 0 run return run function dorklib:exception {args:{message:"Invalid argument: Function must be a namespaced ID"}}

return 1
