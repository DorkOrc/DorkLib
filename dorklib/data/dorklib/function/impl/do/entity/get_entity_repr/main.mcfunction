execute unless entity @s run return run function dorklib:exception {args:{message:"Expected to run as an entity"}}

data modify storage do:io input set value {selector:"@s"}
function do:text/resolve

# get uuid repr or username from selector
data modify storage do:io output set from storage do:io output.insertion

return 1
