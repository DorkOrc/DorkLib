data modify storage dorklib:main functions."do:str/join".temp_list[0] set from storage dorklib:main functions."do:str/join".string
loot replace block -30000000 0 1602 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"dorklib:main",nbt:'functions."do:str/join".temp_list'}}]}]}]}
data modify storage dorklib:main functions."do:str/join".string set string block -30000000 0 1602 Items[0].components.minecraft:custom_name 2 -2

data modify storage do:io input set from storage dorklib:main functions."do:str/join".substrings[0]
data remove storage dorklib:main functions."do:str/join".substrings[0]
function do:str/escape/double_quote
data modify storage dorklib:main functions."do:str/join".suffix set from storage do:io output

function dorklib:impl/do/str/join/concatenate_suffix with storage dorklib:main functions."do:str/join"

execute if data storage dorklib:main functions."do:str/join".substrings[0] run function dorklib:impl/do/str/join/loop
