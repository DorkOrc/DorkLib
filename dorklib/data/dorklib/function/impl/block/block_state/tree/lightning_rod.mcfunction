data modify storage do:io output set value {Name:"minecraft:lightning_rod",Properties:{facing:"up",powered:"false",waterlogged:"false"}}
execute if block ~ ~ ~ lightning_rod[facing=north] run data modify storage do:io output.Properties.facing set value "north"
execute if block ~ ~ ~ lightning_rod[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ lightning_rod[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ lightning_rod[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ lightning_rod[facing=down] run data modify storage do:io output.Properties.facing set value "down"
execute if block ~ ~ ~ lightning_rod[powered=true] run data modify storage do:io output.Properties.powered set value "true"
execute if block ~ ~ ~ lightning_rod[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
