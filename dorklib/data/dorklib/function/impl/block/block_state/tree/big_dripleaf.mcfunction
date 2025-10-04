data modify storage do:io output set value {Name:"minecraft:big_dripleaf",Properties:{facing:"north",tilt:"none",waterlogged:"false"}}
execute if block ~ ~ ~ big_dripleaf[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ big_dripleaf[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ big_dripleaf[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ big_dripleaf[tilt=unstable] run data modify storage do:io output.Properties.tilt set value "unstable"
execute if block ~ ~ ~ big_dripleaf[tilt=partial] run data modify storage do:io output.Properties.tilt set value "partial"
execute if block ~ ~ ~ big_dripleaf[tilt=full] run data modify storage do:io output.Properties.tilt set value "full"
execute if block ~ ~ ~ big_dripleaf[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
