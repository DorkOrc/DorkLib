data modify storage do:io output set value {Name:"minecraft:amethyst_cluster",Properties:{"facing": "up", "waterlogged": "false"}}
execute if block ~ ~ ~ amethyst_cluster[facing=north] run data modify storage do:io output.Properties.facing set value "north"
execute if block ~ ~ ~ amethyst_cluster[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ amethyst_cluster[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ amethyst_cluster[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ amethyst_cluster[facing=down] run data modify storage do:io output.Properties.facing set value "down"
execute if block ~ ~ ~ amethyst_cluster[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
