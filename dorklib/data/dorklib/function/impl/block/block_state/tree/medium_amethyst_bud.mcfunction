data modify storage do:io output set value {Name:"minecraft:medium_amethyst_bud",Properties:{"facing": "up", "waterlogged": "false"}}
execute if block ~ ~ ~ medium_amethyst_bud[facing=north] run data modify storage do:io output.Properties.facing set value "north"
execute if block ~ ~ ~ medium_amethyst_bud[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ medium_amethyst_bud[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ medium_amethyst_bud[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ medium_amethyst_bud[facing=down] run data modify storage do:io output.Properties.facing set value "down"
execute if block ~ ~ ~ medium_amethyst_bud[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
