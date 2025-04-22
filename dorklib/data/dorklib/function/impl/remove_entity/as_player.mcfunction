execute store result score #do_immediate_respawn_gamerule dorklib.var run gamerule doImmediateRespawn
execute store result score #keep_inventory_gamerule dorklib.var run gamerule keepInventory
execute store result score #show_death_messages_gamerule dorklib.var run gamerule showDeathMessages

gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule showDeathMessages false

execute on passengers run ride @s dismount
kill @s

execute if score #do_immediate_respawn_gamerule dorklib.var matches 0 run gamerule doImmediateRespawn false
execute if score #keep_inventory_gamerule dorklib.var matches 0 run gamerule keepInventory false
execute if score #show_death_messages_gamerule dorklib.var matches 1 run gamerule showDeathMessages true

return 1
