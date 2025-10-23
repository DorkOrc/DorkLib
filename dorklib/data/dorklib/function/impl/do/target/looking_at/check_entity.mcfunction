execute if score #being_looked_at dorklib.var matches 1 run return fail
tag @s add dorklib.looking_at_candidate
execute as @a[limit=1,x=0,scores={dorklib.var=1}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",looking_at:{nbt:'{Tags:["dorklib.looking_at_candidate"]}'}}}} run scoreboard players set #being_looked_at dorklib.var 1
tag @s remove dorklib.looking_at_candidate
execute if score #being_looked_at dorklib.var matches 1 run return 1
