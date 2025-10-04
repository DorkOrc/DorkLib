# write in expanded form and stringify, then return as JSON
function dorklib:impl/do/nbt/write_json/types/decimal/expanded_and_stringify with storage dorklib:main functions."do:nbt/write_json".stack[-1]
function dorklib:impl/do/nbt/write_json/types/decimal/check_whole_number with storage dorklib:main functions."do:nbt/write_json".stack[-1]

# remove top element
data remove storage dorklib:main functions."do:nbt/write_json".stack[-1]
