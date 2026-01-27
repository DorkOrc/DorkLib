# get JSON for first item value
data modify storage dorklib:main functions."do:nbt/write_json".stack append value {}
data modify storage dorklib:main functions."do:nbt/write_json".stack[-1].value set from storage dorklib:main functions."do:nbt/write_json".stack[-2].items[0].value
function dorklib:impl/do/nbt/write_json/pop

# escape double quotes in key
data modify storage do:io input set from storage dorklib:main functions."do:nbt/write_json".stack[-1].items[0].key
function do:str/escape/double_quote
data modify storage dorklib:main functions."do:nbt/write_json".stack[-1].escaped_key set from storage do:io output

# append JSON key-value pair to components list
data modify storage do:io input set value ['"',{storage:"dorklib:main",nbt:'functions."do:nbt/write_json".stack[-1].escaped_key',interpret:true},'":',{storage:"dorklib:main",nbt:'functions."do:nbt/write_json".returned',interpret:true}]
function do:text/resolve
data modify storage dorklib:main functions."do:nbt/write_json".stack[-1].components append from storage do:io output

# remove item
data remove storage dorklib:main functions."do:nbt/write_json".stack[-1].items[0]

# repeat until there are no more items left
execute if data storage dorklib:main functions."do:nbt/write_json".stack[-1].items[0] run function dorklib:impl/do/nbt/write_json/types/compound/loop
