# arguments: path

# remove nbt text component fields
#$data remove storage do:io $(path).type
$data remove storage do:io $(path).selector
$data remove storage do:io $(path).separator

# replace with empty text
$data modify storage do:io $(path) merge value {type:"text",text:""}
