# ⚠️ OVERLAY : overlay-1_21_10

# inverted from elytra_movement_check
execute store result score #inverted_game_rule dorklib.var run gamerule disableElytraMovementCheck
return run execute if score #inverted_game_rule dorklib.var matches 0
