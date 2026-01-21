# ⚠️ OVERLAY : overlay-1_21_10

execute store result score #spread_fire dorklib.var run gamerule doFireTick
execute if score #spread_fire dorklib.var matches 0 run return 0
execute store result score #allow_fire_ticks_away_from_player dorklib.var run gamerule allowFireTicksAwayFromPlayer
execute if score #allow_fire_ticks_away_from_player dorklib.var matches 1 run return -1
return 128
