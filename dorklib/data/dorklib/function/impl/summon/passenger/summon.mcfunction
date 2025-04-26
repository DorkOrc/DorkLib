# arguments: id, nbt, function

execute if score #nbt_tags dorklib.var matches 0 run return run function dorklib:impl/summon/passenger/summon_soft with storage dorklib:main functions."do:summon/passenger"

return run function dorklib:impl/summon/passenger/summon_strict with storage dorklib:main functions."do:summon/passenger"

# validate macro inputs
$execute summon $(id) if entity @s[type=$(id),nbt=$(nbt)] if function $(function) if data entity @s $(nbt) run function $(function) {}
# - "id" must be a summonable entity type ID (not a tag, not a player/fishing_bobber)
# - "id" must not have any other arguments following it
# - "function" must be a function ID
# - "function" must not have any other arguments following it
# - "nbt" must be an NBT compound
# - "nbt" must not have any other arguments following it
