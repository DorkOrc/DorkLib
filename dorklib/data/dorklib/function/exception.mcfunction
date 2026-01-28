# arguments: args

$data modify storage do:io exception set value $(args)
execute unless data storage do:io exception.message run data modify storage do:io exception.message set value "An exception occurred"

return fail
