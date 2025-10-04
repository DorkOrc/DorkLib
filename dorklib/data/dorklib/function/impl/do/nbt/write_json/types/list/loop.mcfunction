# get JSON for first element
data modify storage dorklib:main functions."do:nbt/write_json".stack append value {}
data modify storage dorklib:main functions."do:nbt/write_json".stack[-1].value set from storage dorklib:main functions."do:nbt/write_json".stack[-2].value[0]
function dorklib:impl/do/nbt/write_json/pop

# append JSON element to components list
data modify storage dorklib:main functions."do:nbt/write_json".stack[-1].components append from storage dorklib:main functions."do:nbt/write_json".returned

# remove element
data remove storage dorklib:main functions."do:nbt/write_json".stack[-1].value[0]

# repeat until there are no more elements left
execute if data storage dorklib:main functions."do:nbt/write_json".stack[-1].value[0] run function dorklib:impl/do/nbt/write_json/types/list/loop
