scoreboard players set #dorklib load.status 1

scoreboard objectives add dorklib.global dummy
scoreboard objectives add dorklib.var dummy

data merge storage dorklib:meta {version:0,name:"DorkLib"}
execute store result storage dorklib:meta version int 1 run scoreboard players set #version dorklib.global 0

data get storage do:io {}
data remove storage dorklib:io exception
data get storage dorklib:main {}
data remove storage dorklib:main functions

function dorklib:forceload_chunk
