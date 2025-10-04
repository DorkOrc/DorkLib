data modify storage do:io output set value {Name:"minecraft:blue_shulker_box",Properties:{facing:"up"}}
execute if block ~ ~ ~ blue_shulker_box[facing=north] run data modify storage do:io output.Properties.facing set value "north"
execute if block ~ ~ ~ blue_shulker_box[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ blue_shulker_box[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ blue_shulker_box[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ blue_shulker_box[facing=down] run data modify storage do:io output.Properties.facing set value "down"
