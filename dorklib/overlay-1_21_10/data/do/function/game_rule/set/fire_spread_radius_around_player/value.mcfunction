# ⚠️ OVERLAY : overlay-1_21_10

# arguments: value

$scoreboard players set #fire_spread_radius_around_player dorklib.var $(value)

execute if score #fire_spread_radius_around_player dorklib.var matches -1 run return run function do:game_rule/set_fire_spread_radius_around_player/unlimited_distance

execute if score #fire_spread_radius_around_player dorklib.var matches 0 run return run function do:game_rule/set_fire_spread_radius_around_player/no_fire_spreading

execute if score #fire_spread_radius_around_player dorklib.var matches 128 run return run function do:game_rule/set_fire_spread_radius_around_player/default

return fail
