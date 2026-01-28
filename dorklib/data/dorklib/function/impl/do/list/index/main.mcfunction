# validate inputs
execute unless data storage do:io args.value run return run function dorklib:exception {args:{message:"Expected a \"value\" argument"}}
data modify storage dorklib:main functions."do:list/index".value set from storage do:io args.value

execute unless data storage do:io input[0] unless data storage do:io {input:[]} unless data storage do:io {input:[B;]} unless data storage do:io {input:[I;]} unless data storage do:io {input:[L;]} run return run function dorklib:exception {args:{message:"The input must be a list"}}
data modify storage dorklib:main functions."do:list/index".list set from storage do:io input

# return exception early if the list is empty or the value is not even partially in the list
execute unless data storage dorklib:main functions."do:list/index".list[0] run return run function dorklib:exception {args:{message:[{storage:"dorklib:main",nbt:'functions."do:list/index".value'}," is not in the list"]}}

data modify storage do:io input set from storage dorklib:main functions."do:list/index".value
function do:nbt/write_snbt
scoreboard players set #parially_in_list dorklib.var 0
function dorklib:impl/do/list/index/check_if_value_partially_in_list with storage do:io
execute if score #parially_in_list dorklib.var matches 0 run return run function dorklib:exception {args:{message:[{storage:"dorklib:main",nbt:'functions."do:list/index".value'}," is not in the list"]}}

# loop through list to find index
scoreboard players set #index dorklib.var -1
return run function dorklib:impl/do/list/index/loop
