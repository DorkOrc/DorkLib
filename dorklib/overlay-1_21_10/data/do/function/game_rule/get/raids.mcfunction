# ⚠️ OVERLAY : overlay-1_21_10

# inverted from raids
execute store result score #inverted_game_rule dorklib.var run gamerule disableRaids
return run execute if score #inverted_game_rule dorklib.var matches 0
