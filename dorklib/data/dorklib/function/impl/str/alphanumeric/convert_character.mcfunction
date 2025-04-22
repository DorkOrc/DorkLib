# arguments: c

$execute if data storage dorklib:constant character_to_alphanumeric."$(c)" run return run data modify storage dorklib:main functions."do:str/chars".c set from storage dorklib:constant character_to_alphanumeric."$(c)"
data modify storage dorklib:main functions."do:str/chars".c set value "_"
