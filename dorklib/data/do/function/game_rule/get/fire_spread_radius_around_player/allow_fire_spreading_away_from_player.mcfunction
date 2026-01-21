# ⚠️ OVERLAY : overlay-1_21_10

execute store result score #fire_spread_radius_around_player dorklib.var run gamerule minecraft:fire_spread_radius_around_player
execute if score #fire_spread_radius_around_player dorklib.var matches -1 run return 1
execute if score #fire_spread_radius_around_player dorklib.var matches 128.. run return 1
return 0
