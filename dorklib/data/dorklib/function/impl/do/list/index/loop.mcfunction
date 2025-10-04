# pop first element
data modify storage dorklib:main functions."do:list/index".element_copy set from storage dorklib:main functions."do:list/index".list[0]
data remove storage dorklib:main functions."do:list/index".list[0]
scoreboard players add #index dorklib.var 1

# compare popped element
execute store success score #different dorklib.var run data modify storage dorklib:main functions."do:list/index".element_copy set from storage dorklib:main functions."do:list/index".value
execute if score #different dorklib.var matches 0 store result storage do:io output int 1 run return run scoreboard players get #index dorklib.var

# continue unless list is empty
execute if data storage dorklib:main functions."do:list/index".list[0] run return run function dorklib:impl/do/list/index/loop
return run function dorklib:exception {args:{message:[{storage:"dorklib:main",nbt:'functions."do:list/index".value_repr'}," is not in list"]}}
