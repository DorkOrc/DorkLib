execute store result score #immediate_respawn_gamerule dorklib.var run gamerule immediate_respawn
execute store result score #keep_inventory_gamerule dorklib.var run gamerule keep_inventory
execute store result score #show_death_messages_gamerule dorklib.var run gamerule show_death_messages

gamerule immediate_respawn true
gamerule keep_inventory true
gamerule show_death_messages false

execute on passengers run ride @s dismount
kill @s

execute if score #immediate_respawn_gamerule dorklib.var matches 0 run gamerule immediate_respawn false
execute if score #keep_inventory_gamerule dorklib.var matches 0 run gamerule keep_inventory false
execute if score #show_death_messages_gamerule dorklib.var matches 1 run gamerule show_death_messages true

return 1
