# initialise components list
#data modify storage dorklib:main functions."do:nbt/write_json".stack[-1].components set value []

# iterate through items
execute if data storage dorklib:main functions."do:nbt/write_json".stack[-1].value[0] run function dorklib:impl/nbt/write_json/types/list/loop

# return JSON
data modify storage do:io input set value ["[",{storage:"dorklib:main",nbt:'functions."do:nbt/write_json".stack[-1].components[]',interpret:true,separator:","},"]"]
function do:text/resolve
data modify storage dorklib:main functions."do:nbt/write_json".returned set from storage do:io output

# remove top element
data remove storage dorklib:main functions."do:nbt/write_json".stack[-1]
