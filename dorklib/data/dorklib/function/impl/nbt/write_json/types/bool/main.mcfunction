# return false for 0b and true for 1b
data modify storage dorklib:main functions."do:nbt/write_json".value set from storage dorklib:main functions."do:nbt/write_json".stack[-1].value
execute if data storage dorklib:main functions."do:nbt/write_json"{value:0b} run data modify storage dorklib:main functions."do:nbt/write_json".returned set value "false"
execute if data storage dorklib:main functions."do:nbt/write_json"{value:1b} run data modify storage dorklib:main functions."do:nbt/write_json".returned set value "true"

# otherwise, return a number
execute unless data storage dorklib:main functions."do:nbt/write_json"{value:0b} unless data storage dorklib:main functions."do:nbt/write_json"{value:1b} run data modify storage dorklib:main functions."do:nbt/write_json".returned set string storage dorklib:main functions."do:nbt/write_json".stack[-1].value 0 -1

# remove top element
data remove storage dorklib:main functions."do:nbt/write_json".stack[-1]
