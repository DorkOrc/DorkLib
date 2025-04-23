# load chunk
execute in minecraft:overworld run forceload add -30000000 1600
execute in minecraft:overworld unless loaded -30000000 0 1600 run return run schedule function dorklib:forceload_chunk 1t replace

# place blocks
execute in minecraft:overworld run setblock -30000000 0 1602 yellow_shulker_box strict
execute in minecraft:overworld run setblock -30000000 0 1604 test_block[mode=log]{mode:"log"} strict

# call post-chunk-load functions
execute in minecraft:overworld positioned -30000000 0 1600 run function #do:chunk_load
