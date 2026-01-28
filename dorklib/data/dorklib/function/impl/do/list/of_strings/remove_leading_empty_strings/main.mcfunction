# validate input
execute unless data storage do:io input[0] unless data storage do:io {input:[]} unless data storage do:io {input:[B;]} unless data storage do:io {input:[I;]} unless data storage do:io {input:[L;]} run return run function dorklib:exception {args:{message:"The input must be a list"}}

# loop
execute if data storage do:io input[0] run function dorklib:impl/do/list/of_strings/remove_leading_empty_strings/loop

data modify storage do:io output set from storage do:io input

return 1
