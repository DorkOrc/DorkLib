data modify storage do:io output set value {Name:"minecraft:small_dripleaf",Properties:{facing:"north",half:"lower",waterlogged:"false"}}
execute if block ~ ~ ~ small_dripleaf[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ small_dripleaf[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ small_dripleaf[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ small_dripleaf[half=upper] run data modify storage do:io output.Properties.half set value "upper"
execute if block ~ ~ ~ small_dripleaf[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
