# ⚠️ OVERLAY : overlay-1_21_10

execute store result score #fire_spread_radius_around_player dorklib.var run gamerule minecraft:fire_spread_radius_around_player
execute if score #fire_spread_radius_around_player dorklib.var matches 0 run return 0
return 1
