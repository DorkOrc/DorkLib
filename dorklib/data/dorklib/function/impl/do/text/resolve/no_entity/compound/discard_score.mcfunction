# arguments: path

# remove nbt text component fields
#$data remove storage do:io $(path).type
$data remove storage do:io $(path).score

# replace with empty text
$data modify storage do:io $(path) merge value {type:"text",text:""}
