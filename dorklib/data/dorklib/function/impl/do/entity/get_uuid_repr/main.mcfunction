execute unless entity @s run return run function dorklib:exception {args:{message:"Expected to run as an entity"}}

data modify storage do:io input set value {selector:"@s"}
function do:text/resolve

# for non-player entities, get uuid repr from selector
execute unless entity @s[type=player] run return run data modify storage do:io output set from storage do:io output.insertion

# for players, get uuid from converting integer array into hexadecimal digits
function dorklib:impl/do/entity/get_uuid_repr/set_digit_values
function dorklib:impl/do/entity/get_uuid_repr/set_digit_chars with storage dorklib:main functions."do:entity/get_uuid_repr".digits
function dorklib:impl/do/entity/get_uuid_repr/write_final_string with storage dorklib:main functions."do:entity/get_uuid_repr".digits

return 1
