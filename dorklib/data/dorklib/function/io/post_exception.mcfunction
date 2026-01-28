data remove storage do:io output

execute unless data storage do:io exception.message run data modify storage do:io exception.message set value "An uncaught exception occurred"
execute unless data storage do:io exception.function run data modify storage do:io exception.function prepend value "???"
function #dorklib:exception

return fail
