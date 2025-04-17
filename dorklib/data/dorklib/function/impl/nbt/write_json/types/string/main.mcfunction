# escape double quotes
data modify storage do:io input set from storage dorklib:main functions."do:nbt/write_json".stack[-1].value
function do:str/escape/double_quote

# return JSON
data modify storage dorklib:main functions."do:nbt/write_json".returned set value ['"',"",'"']
data modify storage dorklib:main functions."do:nbt/write_json".returned[1] set from storage do:io output

# remove top element
data remove storage dorklib:main functions."do:nbt/write_json".stack[-1]
