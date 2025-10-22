execute unless entity @s run return run function dorklib:exception {args:{message:"Expected to run as an entity"}}

data modify storage do:io input set value {selector:"@s"}
function do:text/resolve
data modify storage do:io output set from storage do:io output.hover_event.uuid

return 1
