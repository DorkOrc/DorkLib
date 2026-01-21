# ⚠️ OVERLAY : overlay-1_21_10

execute store result score #spread_fire dorklib.var run gamerule doFireTick
execute if score #spread_fire dorklib.var matches 0 run return 0
return run gamerule allowFireTicksAwayFromPlayer
