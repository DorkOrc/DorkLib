# arguments: path

# remove nbt text component fields
#$data remove storage do:io $(path).type
$data remove storage do:io $(path).nbt
$data remove storage do:io $(path).source
$data remove storage do:io $(path).entity
#$data remove storage do:io $(path).block
#$data remove storage do:io $(path).storage
$data remove storage do:io $(path).interpret
$data remove storage do:io $(path).separator

# replace with empty text
$data modify storage do:io $(path) merge value {type:"text",text:""}
